
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* list; } ;
typedef TYPE_1__ git_config_entries ;
struct TYPE_9__ {int entry; struct TYPE_9__* next; } ;
typedef TYPE_2__ config_entry_list ;


 scalar_t__ git_config_entries_dup_entry (TYPE_1__*,int ) ;
 int git_config_entries_free (TYPE_1__*) ;
 int git_config_entries_new (TYPE_1__**) ;

int git_config_entries_dup(git_config_entries **out, git_config_entries *entries)
{
 git_config_entries *result = ((void*)0);
 config_entry_list *head;
 int error;

 if ((error = git_config_entries_new(&result)) < 0)
  goto out;

 for (head = entries->list; head; head = head->next)
  if ((git_config_entries_dup_entry(result, head->entry)) < 0)
   goto out;

 *out = result;
 result = ((void*)0);

out:
 git_config_entries_free(result);
 return error;
}
