
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int ktime_t ;


 int MIPS_EXC_INT_TIMER ;
 int back_to_back_c0_hazard () ;
 int ktime_get () ;
 int kvm_mips_restore_hrtimer (struct kvm_vcpu*,int ,int,int) ;
 int kvm_vz_queue_irq (struct kvm_vcpu*,int ) ;
 int read_gc0_cause () ;
 int read_gc0_compare () ;
 int read_gc0_count () ;

__attribute__((used)) static void _kvm_vz_save_htimer(struct kvm_vcpu *vcpu,
    u32 *out_compare, u32 *out_cause)
{
 u32 cause, compare, before_count, end_count;
 ktime_t before_time;

 compare = read_gc0_compare();
 *out_compare = compare;

 before_time = ktime_get();





 before_count = read_gc0_count();
 back_to_back_c0_hazard();
 cause = read_gc0_cause();
 *out_cause = cause;






 back_to_back_c0_hazard();
 end_count = read_gc0_count();






 if (end_count - before_count > compare - before_count - 1)
  kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_TIMER);





 kvm_mips_restore_hrtimer(vcpu, before_time, end_count, -0x10000);
}
