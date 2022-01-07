
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_repository ;
typedef int git_config ;



 int check_error (int,char*) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_repository_config_snapshot (int **,int *) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void config_files(const char *repo_path, git_repository* repo)
{
 const char *email;
 char config_path[256];
 int32_t autocorrect;
 git_config *cfg;
 git_config *snap_cfg;
 int error_code;

 printf("\n*Config Listing*\n");




 sprintf(config_path, "%s/config", repo_path);
 check_error(git_config_open_ondisk(&cfg, config_path), "opening config");

 if (git_config_get_int32(&autocorrect, cfg, "help.autocorrect") == 0)
  printf("Autocorrect: %d\n", autocorrect);

 check_error(git_repository_config_snapshot(&snap_cfg, repo), "config snapshot");
 git_config_get_string(&email, snap_cfg, "user.email");
 printf("Email: %s\n", email);

 error_code = git_config_get_int32(&autocorrect, cfg, "help.autocorrect");
 switch (error_code)
 {
  case 0:
   printf("Autocorrect: %d\n", autocorrect);
   break;
  case 128:
   printf("Autocorrect: Undefined\n");
   break;
  default:
   check_error(error_code, "get_int32 failed");
 }
 git_config_free(cfg);

 check_error(git_repository_config_snapshot(&snap_cfg, repo), "config snapshot");
 error_code = git_config_get_string(&email, snap_cfg, "user.email");
 switch (error_code)
 {
  case 0:
   printf("Email: %s\n", email);
   break;
  case 128:
   printf("Email: Undefined\n");
   break;
  default:
   check_error(error_code, "get_string failed");
 }

 git_config_free(snap_cfg);
}
