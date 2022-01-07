
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_2__ {char* message; } ;


 scalar_t__ git_config_set_string (int *,char const*,char const*) ;
 TYPE_1__* git_error_last () ;
 int printf (char*,char*) ;

__attribute__((used)) static int config_set(git_config *cfg, const char *key, const char *value)
{
 if (git_config_set_string(cfg, key, value) < 0) {
  printf("Unable to set configuration: %s\n", git_error_last()->message);
  return 1;
 }
 return 0;
}
