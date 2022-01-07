
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int flags; } ;
struct TYPE_2__ {int system_timer; int softirq_timer; int hardirq_timer; int guest_timer; scalar_t__ last_update_timer; } ;


 int PF_VCPU ;
 TYPE_1__ S390_lowcore ;
 scalar_t__ get_vtimer () ;
 scalar_t__ hardirq_count () ;
 scalar_t__ in_serving_softirq () ;
 scalar_t__ irq_count () ;
 int virt_timer_forward (scalar_t__) ;

void vtime_account_irq_enter(struct task_struct *tsk)
{
 u64 timer;

 timer = S390_lowcore.last_update_timer;
 S390_lowcore.last_update_timer = get_vtimer();
 timer -= S390_lowcore.last_update_timer;

 if ((tsk->flags & PF_VCPU) && (irq_count() == 0))
  S390_lowcore.guest_timer += timer;
 else if (hardirq_count())
  S390_lowcore.hardirq_timer += timer;
 else if (in_serving_softirq())
  S390_lowcore.softirq_timer += timer;
 else
  S390_lowcore.system_timer += timer;

 virt_timer_forward(timer);
}
