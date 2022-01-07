
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_2__ {char* message; } ;


 int config_get (int *,char*) ;
 int config_set (int *,char*,char*) ;
 TYPE_1__* git_error_last () ;
 int git_repository_config (int **,int *) ;
 int printf (char*,char*) ;

int lg2_config(git_repository *repo, int argc, char **argv)
{
 git_config *cfg;
 int error;

 if ((error = git_repository_config(&cfg, repo)) < 0) {
  printf("Unable to obtain repository config: %s\n", git_error_last()->message);
  goto out;
 }

 if (argc == 2) {
  error = config_get(cfg, argv[1]);
 } else if (argc == 3) {
  error = config_set(cfg, argv[1], argv[2]);
 } else {
  printf("USAGE: %s config <KEY> [<VALUE>]\n", argv[0]);
  error = 1;
 }

out:
 return error;
}
