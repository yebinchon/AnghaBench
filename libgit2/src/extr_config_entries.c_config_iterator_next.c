
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_config_iterator ;
typedef int git_config_entry ;
struct TYPE_4__ {TYPE_1__* head; } ;
typedef TYPE_2__ config_entries_iterator ;
struct TYPE_3__ {struct TYPE_3__* next; int * entry; } ;


 int GIT_ITEROVER ;

int config_iterator_next(
 git_config_entry **entry,
 git_config_iterator *iter)
{
 config_entries_iterator *it = (config_entries_iterator *) iter;

 if (!it->head)
  return GIT_ITEROVER;

 *entry = it->head->entry;
 it->head = it->head->next;

 return 0;
}
