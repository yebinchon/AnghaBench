
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int DIR ;


 int E_RUNTIME_ERROR ;
 int chdir (char const*) ;
 int closedir (int *) ;
 int mrb_cv_get (int *,int ,int ) ;
 int mrb_intern_cstr (int *,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new_cstr (int *,char const*) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_true_value () ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int rmdir (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

mrb_value
mrb_dirtest_teardown(mrb_state *mrb, mrb_value klass)
{
  mrb_value d, sandbox;
  DIR *dirp;
  struct dirent *dp;
  const char *path;


  sandbox = mrb_cv_get(mrb, klass, mrb_intern_cstr(mrb, "sandbox"));
  path = mrb_str_to_cstr(mrb, sandbox);

  dirp = opendir(path);
  while ((dp = readdir(dirp)) != ((void*)0)) {
    if (strcmp(dp->d_name, ".") == 0 || strcmp(dp->d_name, "..") == 0)
      continue;
    if (rmdir(dp->d_name) == -1) {
      mrb_raisef(mrb, E_RUNTIME_ERROR, "rmdir(%S) failed", mrb_str_new_cstr(mrb, dp->d_name));
    }
  }
  closedir(dirp);


  d = mrb_cv_get(mrb, klass, mrb_intern_cstr(mrb, "pwd"));
  path = mrb_str_to_cstr(mrb, d);
  if (chdir(path) == -1) {
    mrb_raisef(mrb, E_RUNTIME_ERROR, "chdir(%S) failed", d);
  }


  sandbox = mrb_cv_get(mrb, klass, mrb_intern_cstr(mrb, "sandbox"));
  path = mrb_str_to_cstr(mrb, sandbox);
  if (rmdir(path) == -1) {
    mrb_raisef(mrb, E_RUNTIME_ERROR, "rmdir(%S) failed", sandbox);
  }

  return mrb_true_value();
}
