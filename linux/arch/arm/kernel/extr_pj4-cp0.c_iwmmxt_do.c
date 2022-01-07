
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;



 int iwmmxt_task_release (struct thread_info*) ;
 int iwmmxt_task_switch (struct thread_info*) ;

__attribute__((used)) static int iwmmxt_do(struct notifier_block *self, unsigned long cmd, void *t)
{
 struct thread_info *thread = t;

 switch (cmd) {
 case 129:
 case 130:
  iwmmxt_task_release(thread);
  break;

 case 128:
  iwmmxt_task_switch(thread);
  break;
 }

 return NOTIFY_DONE;
}
