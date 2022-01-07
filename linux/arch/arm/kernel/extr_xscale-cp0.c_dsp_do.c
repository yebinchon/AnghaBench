
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * extra; } ;
struct thread_info {TYPE_2__ cpu_context; } ;
struct notifier_block {int dummy; } ;
struct TYPE_4__ {int extra; } ;
struct TYPE_6__ {TYPE_1__ cpu_context; } ;


 int NOTIFY_DONE ;


 TYPE_3__* current_thread_info () ;
 int dsp_load_state (int *) ;
 int dsp_save_state (int ) ;

__attribute__((used)) static int dsp_do(struct notifier_block *self, unsigned long cmd, void *t)
{
 struct thread_info *thread = t;

 switch (cmd) {
 case 129:
  thread->cpu_context.extra[0] = 0;
  thread->cpu_context.extra[1] = 0;
  break;

 case 128:
  dsp_save_state(current_thread_info()->cpu_context.extra);
  dsp_load_state(thread->cpu_context.extra);
  break;
 }

 return NOTIFY_DONE;
}
