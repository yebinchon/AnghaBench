
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config_backend ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GITMODULES_CREATE ;
 TYPE_1__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char const*,char const*) ;
 int git_config_backend_delete (int *,int ) ;
 int git_config_backend_free (int *) ;
 int git_config_backend_set_string (int *,int ,char const*) ;
 int * open_gitmodules (int *,int ) ;

__attribute__((used)) static int write_var(git_repository *repo, const char *name, const char *var, const char *val)
{
 git_buf key = GIT_BUF_INIT;
 git_config_backend *mods;
 int error;

 mods = open_gitmodules(repo, GITMODULES_CREATE);
 if (!mods)
  return -1;

 if ((error = git_buf_printf(&key, "submodule.%s.%s", name, var)) < 0)
  goto cleanup;

 if (val)
  error = git_config_backend_set_string(mods, key.ptr, val);
 else
  error = git_config_backend_delete(mods, key.ptr);

 git_buf_dispose(&key);

cleanup:
 git_config_backend_free(mods);
 return error;
}
