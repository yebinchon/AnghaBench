
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
struct child {TYPE_1__ cld; int address; struct child* next; } ;


 int SIGTERM ;
 int addrcmp (int *,int *) ;
 struct child* firstborn ;
 int kill (int ,int ) ;

__attribute__((used)) static void kill_some_child(void)
{
 const struct child *blanket, *next;

 if (!(blanket = firstborn))
  return;

 for (; (next = blanket->next); blanket = next)
  if (!addrcmp(&blanket->address, &next->address)) {
   kill(blanket->cld.pid, SIGTERM);
   break;
  }
}
