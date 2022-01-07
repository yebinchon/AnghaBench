
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_config_entry ;
typedef int git_config_entries ;
struct TYPE_5__ {TYPE_1__* last; } ;
typedef TYPE_2__ config_entry_list ;
struct TYPE_4__ {int * entry; } ;


 int config_entry_get (TYPE_2__**,int *,char const*) ;

int git_config_entries_get(git_config_entry **out, git_config_entries *entries, const char *key)
{
 config_entry_list *entry;
 int error;

 if ((error = config_entry_get(&entry, entries, key)) < 0)
  return error;
 *out = entry->last->entry;

 return 0;
}
