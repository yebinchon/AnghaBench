
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote_autotag_option_t ;
typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int CONFIG_TAGOPT_FMT ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;



 int assert (int) ;
 int ensure_remote_name_is_valid (char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,int ,char const*) ;
 int git_config_delete_entry (int *,int ) ;
 int git_config_set_string (int *,int ,char*) ;
 int git_error_set (int ,char*) ;
 int git_repository_config__weakptr (int **,int *) ;

int git_remote_set_autotag(git_repository *repo, const char *remote, git_remote_autotag_option_t value)
{
 git_buf var = GIT_BUF_INIT;
 git_config *config;
 int error;

 assert(repo && remote);

 if ((error = ensure_remote_name_is_valid(remote)) < 0)
  return error;

 if ((error = git_repository_config__weakptr(&config, repo)) < 0)
  return error;

 if ((error = git_buf_printf(&var, CONFIG_TAGOPT_FMT, remote)))
  return error;

 switch (value) {
 case 128:
  error = git_config_set_string(config, var.ptr, "--no-tags");
  break;
 case 130:
  error = git_config_set_string(config, var.ptr, "--tags");
  break;
 case 129:
  error = git_config_delete_entry(config, var.ptr);
  if (error == GIT_ENOTFOUND)
   error = 0;
  break;
 default:
  git_error_set(GIT_ERROR_INVALID, "invalid value for the tagopt setting");
  error = -1;
 }

 git_buf_dispose(&var);
 return error;
}
