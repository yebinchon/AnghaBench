
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int APIC_DEFAULT_PHYS_BASE ;
 int PAGE_MASK ;
 int trace_vcpu_match_mmio (unsigned long,int,int,int) ;
 scalar_t__ vcpu_match_mmio_gpa (struct kvm_vcpu*,int) ;

__attribute__((used)) static int vcpu_is_mmio_gpa(struct kvm_vcpu *vcpu, unsigned long gva,
       gpa_t gpa, bool write)
{

 if ((gpa & PAGE_MASK) == APIC_DEFAULT_PHYS_BASE)
  return 1;

 if (vcpu_match_mmio_gpa(vcpu, gpa)) {
  trace_vcpu_match_mmio(gva, gpa, write, 1);
  return 1;
 }

 return 0;
}
