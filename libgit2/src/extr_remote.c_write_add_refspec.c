
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_refspec ;
typedef int git_config ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_7__ {scalar_t__ klass; } ;


 char* CONFIG_FETCH_FMT ;
 char* CONFIG_PUSH_FMT ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 scalar_t__ GIT_ERROR_NOMEMORY ;
 int ensure_remote_name_is_valid (char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char const*,char const*) ;
 int git_config_set_multivar (int *,int ,char*,char const*) ;
 TYPE_2__* git_error_last () ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,char const*,int) ;
 int git_repository_config__weakptr (int **,int *) ;

__attribute__((used)) static int write_add_refspec(git_repository *repo, const char *name, const char *refspec, bool fetch)
{
 git_config *cfg;
 git_buf var = GIT_BUF_INIT;
 git_refspec spec;
 const char *fmt;
 int error;

 if ((error = git_repository_config__weakptr(&cfg, repo)) < 0)
     return error;

 fmt = fetch ? CONFIG_FETCH_FMT : CONFIG_PUSH_FMT;

 if ((error = ensure_remote_name_is_valid(name)) < 0)
  return error;

 if ((error = git_refspec__parse(&spec, refspec, fetch)) < 0) {
  if (git_error_last()->klass != GIT_ERROR_NOMEMORY)
   error = GIT_EINVALIDSPEC;

  return error;
 }

 git_refspec__dispose(&spec);

 if ((error = git_buf_printf(&var, fmt, name)) < 0)
  return error;






 if ((error = git_config_set_multivar(cfg, var.ptr, "$^", refspec)) < 0) {
  goto cleanup;
 }

cleanup:
 git_buf_dispose(&var);
 return 0;
}
