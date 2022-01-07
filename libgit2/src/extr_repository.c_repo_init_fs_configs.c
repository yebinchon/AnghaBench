
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int are_symlinks_supported (char const*) ;
 scalar_t__ git_config_delete_entry (int *,char*) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_error_clear () ;
 int git_path_does_fs_decompose_unicode (char const*) ;
 int is_chmod_supported (char const*) ;
 scalar_t__ is_filesystem_case_insensitive (char const*) ;

__attribute__((used)) static int repo_init_fs_configs(
 git_config *cfg,
 const char *cfg_path,
 const char *repo_dir,
 const char *work_dir,
 bool update_ignorecase)
{
 int error = 0;

 if (!work_dir)
  work_dir = repo_dir;

 if ((error = git_config_set_bool(
   cfg, "core.filemode", is_chmod_supported(cfg_path))) < 0)
  return error;

 if (!are_symlinks_supported(work_dir)) {
  if ((error = git_config_set_bool(cfg, "core.symlinks", 0)) < 0)
   return error;
 } else if (git_config_delete_entry(cfg, "core.symlinks") < 0)
  git_error_clear();

 if (update_ignorecase) {
  if (is_filesystem_case_insensitive(repo_dir)) {
   if ((error = git_config_set_bool(cfg, "core.ignorecase", 1)) < 0)
    return error;
  } else if (git_config_delete_entry(cfg, "core.ignorecase") < 0)
   git_error_clear();
 }
 return 0;
}
