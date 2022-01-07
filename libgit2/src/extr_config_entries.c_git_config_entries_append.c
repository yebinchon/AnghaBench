
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int name; } ;
typedef TYPE_1__ git_config_entry ;
struct TYPE_13__ {TYPE_3__* list; int map; } ;
typedef TYPE_2__ git_config_entries ;
struct TYPE_14__ {TYPE_1__* entry; struct TYPE_14__* last; } ;
typedef TYPE_3__ config_entry_list ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int config_entry_list_append (TYPE_3__**,TYPE_3__*) ;
 TYPE_3__* git__calloc (int,int) ;
 TYPE_3__* git_strmap_get (int ,int ) ;
 int git_strmap_set (int ,int ,TYPE_3__*) ;

int git_config_entries_append(git_config_entries *entries, git_config_entry *entry)
{
 config_entry_list *existing, *var;
 int error = 0;

 var = git__calloc(1, sizeof(config_entry_list));
 GIT_ERROR_CHECK_ALLOC(var);
 var->entry = entry;

 if ((existing = git_strmap_get(entries->map, entry->name)) == ((void*)0)) {
  var->last = var;

  error = git_strmap_set(entries->map, entry->name, var);
 } else {
  config_entry_list_append(&existing, var);
 }

 var = git__calloc(1, sizeof(config_entry_list));
 GIT_ERROR_CHECK_ALLOC(var);
 var->entry = entry;
 config_entry_list_append(&entries->list, var);

 return error;
}
