
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* last; struct TYPE_4__* next; } ;
typedef TYPE_1__ config_entry_list ;



__attribute__((used)) static void config_entry_list_append(config_entry_list **list, config_entry_list *entry)
{
 if (*list)
  (*list)->last->next = entry;
 else
  *list = entry;
 (*list)->last = entry;
}
