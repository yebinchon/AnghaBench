
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
typedef TYPE_1__ git_config_entries ;
typedef int config_entry_list ;


 int GIT_ENOTFOUND ;
 int * git_strmap_get (int ,char const*) ;

int config_entry_get(config_entry_list **out, git_config_entries *entries, const char *key)
{
 config_entry_list *list;

 if ((list = git_strmap_get(entries->map, key)) == ((void*)0))
  return GIT_ENOTFOUND;

 *out = list;

 return 0;
}
