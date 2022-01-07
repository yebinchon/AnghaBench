
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct kvm_vcpu_hv_stimer {int index; TYPE_1__ timer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int memset (struct kvm_vcpu_hv_stimer*,int ,int) ;
 int stimer_prepare_msg (struct kvm_vcpu_hv_stimer*) ;
 int stimer_timer_callback ;

__attribute__((used)) static void stimer_init(struct kvm_vcpu_hv_stimer *stimer, int timer_index)
{
 memset(stimer, 0, sizeof(*stimer));
 stimer->index = timer_index;
 hrtimer_init(&stimer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 stimer->timer.function = stimer_timer_callback;
 stimer_prepare_msg(stimer);
}
