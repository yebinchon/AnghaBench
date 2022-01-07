
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int thumbee_state; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int thumbee_state; } ;


 int NOTIFY_DONE ;


 TYPE_1__* current_thread_info () ;
 int teehbr_read () ;
 int teehbr_write (int ) ;

__attribute__((used)) static int thumbee_notifier(struct notifier_block *self, unsigned long cmd, void *t)
{
 struct thread_info *thread = t;

 switch (cmd) {
 case 129:
  teehbr_write(0);
  break;
 case 128:
  current_thread_info()->thumbee_state = teehbr_read();
  teehbr_write(thread->thumbee_state);
  break;
 }

 return NOTIFY_DONE;
}
