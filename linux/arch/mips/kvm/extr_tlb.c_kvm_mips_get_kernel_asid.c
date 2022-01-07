
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int cpu_asid (int,struct mm_struct*) ;
 int smp_processor_id () ;

__attribute__((used)) static u32 kvm_mips_get_kernel_asid(struct kvm_vcpu *vcpu)
{
 struct mm_struct *kern_mm = &vcpu->arch.guest_kernel_mm;
 int cpu = smp_processor_id();

 return cpu_asid(cpu, kern_mm);
}
