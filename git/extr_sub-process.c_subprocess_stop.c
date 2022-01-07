
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; scalar_t__ clean_on_exit; } ;
struct subprocess_entry {int ent; TYPE_1__ process; } ;
struct hashmap {int dummy; } ;


 int SIGTERM ;
 int finish_command (TYPE_1__*) ;
 int hashmap_remove (struct hashmap*,int *,int *) ;
 int kill (int ,int ) ;

void subprocess_stop(struct hashmap *hashmap, struct subprocess_entry *entry)
{
 if (!entry)
  return;

 entry->process.clean_on_exit = 0;
 kill(entry->process.pid, SIGTERM);
 finish_command(&entry->process);

 hashmap_remove(hashmap, &entry->ent, ((void*)0));
}
