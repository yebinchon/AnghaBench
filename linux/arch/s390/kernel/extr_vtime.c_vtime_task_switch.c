
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int softirq_timer; int hardirq_timer; int system_timer; int guest_timer; int user_timer; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_8__ {int softirq_timer; int hardirq_timer; int system_timer; int guest_timer; int user_timer; } ;
struct TYPE_6__ {int softirq_timer; int hardirq_timer; int system_timer; int guest_timer; int user_timer; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;


 TYPE_4__ S390_lowcore ;
 TYPE_3__* current ;
 int do_account_vtime (struct task_struct*) ;

void vtime_task_switch(struct task_struct *prev)
{
 do_account_vtime(prev);
 prev->thread.user_timer = S390_lowcore.user_timer;
 prev->thread.guest_timer = S390_lowcore.guest_timer;
 prev->thread.system_timer = S390_lowcore.system_timer;
 prev->thread.hardirq_timer = S390_lowcore.hardirq_timer;
 prev->thread.softirq_timer = S390_lowcore.softirq_timer;
 S390_lowcore.user_timer = current->thread.user_timer;
 S390_lowcore.guest_timer = current->thread.guest_timer;
 S390_lowcore.system_timer = current->thread.system_timer;
 S390_lowcore.hardirq_timer = current->thread.hardirq_timer;
 S390_lowcore.softirq_timer = current->thread.softirq_timer;
}
