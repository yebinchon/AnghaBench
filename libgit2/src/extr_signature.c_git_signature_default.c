
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_config ;


 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_repository_config_snapshot (int **,int *) ;
 int git_signature_now (int **,char const*,char const*) ;

int git_signature_default(git_signature **out, git_repository *repo)
{
 int error;
 git_config *cfg;
 const char *user_name, *user_email;

 if ((error = git_repository_config_snapshot(&cfg, repo)) < 0)
  return error;

 if (!(error = git_config_get_string(&user_name, cfg, "user.name")) &&
  !(error = git_config_get_string(&user_email, cfg, "user.email")))
  error = git_signature_now(out, user_name, user_email);

 git_config_free(cfg);
 return error;
}
