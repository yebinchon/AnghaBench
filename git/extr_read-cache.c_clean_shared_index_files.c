
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int _ (char*) ;
 int closedir (int *) ;
 int error_errno (int ,int ) ;
 int get_git_dir () ;
 char* git_path (char*,int ) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ should_delete_shared_index (char const*) ;
 int skip_prefix (int ,char*,char const**) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static int clean_shared_index_files(const char *current_hex)
{
 struct dirent *de;
 DIR *dir = opendir(get_git_dir());

 if (!dir)
  return error_errno(_("unable to open git dir: %s"), get_git_dir());

 while ((de = readdir(dir)) != ((void*)0)) {
  const char *sha1_hex;
  const char *shared_index_path;
  if (!skip_prefix(de->d_name, "sharedindex.", &sha1_hex))
   continue;
  if (!strcmp(sha1_hex, current_hex))
   continue;
  shared_index_path = git_path("%s", de->d_name);
  if (should_delete_shared_index(shared_index_path) > 0 &&
      unlink(shared_index_path))
   warning_errno(_("unable to unlink: %s"), shared_index_path);
 }
 closedir(dir);

 return 0;
}
