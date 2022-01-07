
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;
struct TYPE_5__ {char* message; } ;


 int GIT_ENOTFOUND ;
 int git_config_get_entry (TYPE_1__**,int *,char const*) ;
 TYPE_2__* git_error_last () ;
 int printf (char*,char*) ;
 int puts (int ) ;

__attribute__((used)) static int config_get(git_config *cfg, const char *key)
{
 git_config_entry *entry;
 int error;

 if ((error = git_config_get_entry(&entry, cfg, key)) < 0) {
  if (error != GIT_ENOTFOUND)
   printf("Unable to get configuration: %s\n", git_error_last()->message);
  return 1;
 }

 puts(entry->value);
 return 0;
}
