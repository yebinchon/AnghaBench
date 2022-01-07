
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct kvm_pit {int expired; TYPE_1__ pit_state; } ;


 int hrtimer_cancel (int *) ;
 int kthread_flush_work (int *) ;

__attribute__((used)) static void destroy_pit_timer(struct kvm_pit *pit)
{
 hrtimer_cancel(&pit->pit_state.timer);
 kthread_flush_work(&pit->expired);
}
