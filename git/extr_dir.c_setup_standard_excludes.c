
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dir_struct {char* exclude_per_dir; int ss_info_exclude; scalar_t__ untracked; int ss_excludes_file; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;


 int R_OK ;
 int access_or_warn (char const*,int ,int ) ;
 int add_patterns_from_file_1 (struct dir_struct*,char const*,int *) ;
 char const* excludes_file ;
 char* git_path_info_exclude () ;
 TYPE_1__* startup_info ;
 char* xdg_config_home (char*) ;

void setup_standard_excludes(struct dir_struct *dir)
{
 dir->exclude_per_dir = ".gitignore";


 if (!excludes_file)
  excludes_file = xdg_config_home("ignore");
 if (excludes_file && !access_or_warn(excludes_file, R_OK, 0))
  add_patterns_from_file_1(dir, excludes_file,
      dir->untracked ? &dir->ss_excludes_file : ((void*)0));


 if (startup_info->have_repository) {
  const char *path = git_path_info_exclude();
  if (!access_or_warn(path, R_OK, 0))
   add_patterns_from_file_1(dir, path,
       dir->untracked ? &dir->ss_info_exclude : ((void*)0));
 }
}
