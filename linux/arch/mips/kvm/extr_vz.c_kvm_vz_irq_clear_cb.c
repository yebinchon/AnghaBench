
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pending_exceptions_clr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;






 unsigned int MIPS_EXC_MAX ;
 int clear_bit (unsigned int,int *) ;
 int clear_c0_guestctl2 (int) ;
 int clear_gc0_cause (int) ;
 int cpu_has_guestctl2 ;
 int* kvm_vz_priority_to_irq ;
 int read_c0_guestctl2 () ;

__attribute__((used)) static int kvm_vz_irq_clear_cb(struct kvm_vcpu *vcpu, unsigned int priority,
          u32 cause)
{
 u32 irq = (priority < MIPS_EXC_MAX) ?
  kvm_vz_priority_to_irq[priority] : 0;

 switch (priority) {
 case 128:






  if (cpu_has_guestctl2) {
   if (!(read_c0_guestctl2() & (irq << 14)))
    clear_c0_guestctl2(irq);
  } else {
   clear_gc0_cause(irq);
  }
  break;

 case 131:
 case 130:
 case 129:

  if (cpu_has_guestctl2) {
   if (!(read_c0_guestctl2() & (irq << 14)))
    clear_c0_guestctl2(irq);
  } else {
   clear_gc0_cause(irq);
  }
  break;

 default:
  break;
 }

 clear_bit(priority, &vcpu->arch.pending_exceptions_clr);
 return 1;
}
