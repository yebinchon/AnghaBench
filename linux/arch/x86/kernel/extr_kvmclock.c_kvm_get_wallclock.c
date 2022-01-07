
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;


 int msr_kvm_wall_clock ;
 int preempt_disable () ;
 int preempt_enable () ;
 int pvclock_read_wallclock (int *,int ,struct timespec64*) ;
 int slow_virt_to_phys (int *) ;
 int this_cpu_pvti () ;
 int wall_clock ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void kvm_get_wallclock(struct timespec64 *now)
{
 wrmsrl(msr_kvm_wall_clock, slow_virt_to_phys(&wall_clock));
 preempt_disable();
 pvclock_read_wallclock(&wall_clock, this_cpu_pvti(), now);
 preempt_enable();
}
