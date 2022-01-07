
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_dir {int * status; int hash; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int RR_HAS_POSTIMAGE ;
 int RR_HAS_PREIMAGE ;
 int closedir (int *) ;
 int fit_variant (struct rerere_dir*,int) ;
 int git_path (char*,int ) ;
 int hash_to_hex (int ) ;
 scalar_t__ is_rr_file (int ,char*,int*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;

__attribute__((used)) static void scan_rerere_dir(struct rerere_dir *rr_dir)
{
 struct dirent *de;
 DIR *dir = opendir(git_path("rr-cache/%s", hash_to_hex(rr_dir->hash)));

 if (!dir)
  return;
 while ((de = readdir(dir)) != ((void*)0)) {
  int variant;

  if (is_rr_file(de->d_name, "postimage", &variant)) {
   fit_variant(rr_dir, variant);
   rr_dir->status[variant] |= RR_HAS_POSTIMAGE;
  } else if (is_rr_file(de->d_name, "preimage", &variant)) {
   fit_variant(rr_dir, variant);
   rr_dir->status[variant] |= RR_HAS_PREIMAGE;
  }
 }
 closedir(dir);
}
