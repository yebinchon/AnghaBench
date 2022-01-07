
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int ktime_t ;


 int MIPS_EXC_INT_TIMER ;
 int back_to_back_c0_hazard () ;
 int kvm_mips_freeze_hrtimer (struct kvm_vcpu*,int*) ;
 int kvm_vz_queue_irq (struct kvm_vcpu*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int read_c0_count () ;
 int read_gc0_count () ;
 int write_c0_gtoffset (int) ;
 int write_gc0_cause (int) ;

__attribute__((used)) static void _kvm_vz_restore_htimer(struct kvm_vcpu *vcpu,
       u32 compare, u32 cause)
{
 u32 start_count, after_count;
 ktime_t freeze_time;
 unsigned long flags;





 local_irq_save(flags);
 freeze_time = kvm_mips_freeze_hrtimer(vcpu, &start_count);
 write_c0_gtoffset(start_count - read_c0_count());
 local_irq_restore(flags);


 back_to_back_c0_hazard();
 write_gc0_cause(cause);






 back_to_back_c0_hazard();
 after_count = read_gc0_count();
 if (after_count - start_count > compare - start_count - 1)
  kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_TIMER);
}
