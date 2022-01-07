
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_22__ {int drivers; } ;
typedef TYPE_1__ git_diff_driver_registry ;
struct TYPE_23__ {int name; int word_pattern; int type; int fn_patterns; int binary_flags; } ;
typedef TYPE_2__ git_diff_driver ;
struct TYPE_24__ {int value; } ;
typedef TYPE_3__ git_config_entry ;
typedef int git_config ;
struct TYPE_25__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 int DIFF_DRIVER_AUTO ;
 size_t DIFF_DRIVER_BINARY ;
 int DIFF_DRIVER_PATTERNLIST ;
 TYPE_4__ GIT_BUF_INIT ;
 int GIT_DIFF_FORCE_TEXT ;
 int GIT_ENOTFOUND ;
 int diff_driver_alloc (TYPE_2__**,size_t*,char const*) ;
 int diff_driver_funcname ;
 int diff_driver_xfuncname ;
 scalar_t__ git_array_size (int ) ;
 int git_buf_PUTS (TYPE_4__*,char*) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_buf_printf (TYPE_4__*,char*,char const*) ;
 int git_buf_truncate (TYPE_4__*,scalar_t__) ;
 int git_config__get_bool_force (int *,int ,int) ;
 int git_config__lookup_entry (TYPE_3__**,int *,int ,int) ;
 int git_config_entry_free (TYPE_3__*) ;
 int git_config_free (int *) ;
 int git_config_get_multivar_foreach (int *,int ,int *,int ,TYPE_2__*) ;
 int git_diff_driver_builtin (TYPE_2__**,TYPE_1__*,char const*) ;
 int git_diff_driver_free (TYPE_2__*) ;
 int git_error_clear () ;
 int git_regexp_compile (int *,int ,int ) ;
 scalar_t__ git_repository_config_snapshot (int **,int *) ;
 TYPE_1__* git_repository_driver_registry (int *) ;
 TYPE_2__* git_strmap_get (int ,char const*) ;
 int git_strmap_set (int ,int ,TYPE_2__*) ;
 TYPE_2__* global_drivers ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int git_diff_driver_load(
 git_diff_driver **out, git_repository *repo, const char *driver_name)
{
 int error = 0;
 git_diff_driver_registry *reg;
 git_diff_driver *drv;
 size_t namelen;
 git_config *cfg = ((void*)0);
 git_buf name = GIT_BUF_INIT;
 git_config_entry *ce = ((void*)0);
 bool found_driver = 0;

 if ((reg = git_repository_driver_registry(repo)) == ((void*)0))
  return -1;

 if ((drv = git_strmap_get(reg->drivers, driver_name)) != ((void*)0)) {
  *out = drv;
  return 0;
 }

 if ((error = diff_driver_alloc(&drv, &namelen, driver_name)) < 0)
  goto done;

 drv->type = DIFF_DRIVER_AUTO;


 if (git_repository_config_snapshot(&cfg, repo) < 0) {
  git_error_clear();
  goto done;
 }

 if ((error = git_buf_printf(&name, "diff.%s.binary", driver_name)) < 0)
  goto done;

 switch (git_config__get_bool_force(cfg, name.ptr, -1)) {
 case 1:

  *out = &global_drivers[DIFF_DRIVER_BINARY];
  goto done;
 case 0:


  drv->binary_flags = GIT_DIFF_FORCE_TEXT;
  found_driver = 1;
  break;
 default:

  break;
 }



 git_buf_truncate(&name, namelen + strlen("diff.."));
 if ((error = git_buf_PUTS(&name, "xfuncname")) < 0)
  goto done;

 if ((error = git_config_get_multivar_foreach(
   cfg, name.ptr, ((void*)0), diff_driver_xfuncname, drv)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto done;
  git_error_clear();
 }

 git_buf_truncate(&name, namelen + strlen("diff.."));
 if ((error = git_buf_PUTS(&name, "funcname")) < 0)
  goto done;

 if ((error = git_config_get_multivar_foreach(
   cfg, name.ptr, ((void*)0), diff_driver_funcname, drv)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto done;
  git_error_clear();
 }


 if (git_array_size(drv->fn_patterns) > 0) {
  drv->type = DIFF_DRIVER_PATTERNLIST;
  found_driver = 1;
 }

 git_buf_truncate(&name, namelen + strlen("diff.."));
 if ((error = git_buf_PUTS(&name, "wordregex")) < 0)
  goto done;

 if ((error = git_config__lookup_entry(&ce, cfg, name.ptr, 0)) < 0)
  goto done;
 if (!ce || !ce->value)
                                                    ;
 else if (!(error = git_regexp_compile(&drv->word_pattern, ce->value, 0)))
  found_driver = 1;
 else {

  goto done;
 }






 if (!found_driver)
  goto done;


 if ((error = git_strmap_set(reg->drivers, drv->name, drv)) < 0)
  goto done;

 *out = drv;

done:
 git_config_entry_free(ce);
 git_buf_dispose(&name);
 git_config_free(cfg);

 if (!*out) {
  int error2 = git_diff_driver_builtin(out, reg, driver_name);
  if (!error)
   error = error2;
 }

 if (drv && drv != *out)
  git_diff_driver_free(drv);

 return error;
}
