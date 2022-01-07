
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* list; int map; } ;
typedef TYPE_1__ git_config_entries ;
typedef TYPE_1__ config_entry_list ;


 int config_entry_list_free (TYPE_1__*) ;
 int git__free (TYPE_1__*) ;
 int git_strmap_foreach_value (int ,TYPE_1__*,int ) ;
 int git_strmap_free (int ) ;

__attribute__((used)) static void config_entries_free(git_config_entries *entries)
{
 config_entry_list *list = ((void*)0), *next;

 git_strmap_foreach_value(entries->map, list, config_entry_list_free(list));
 git_strmap_free(entries->map);

 list = entries->list;
 while (list != ((void*)0)) {
  next = list->next;
  git__free(list);
  list = next;
 }

 git__free(entries);
}
