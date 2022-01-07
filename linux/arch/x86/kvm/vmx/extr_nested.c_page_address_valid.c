
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 scalar_t__ PAGE_ALIGNED (int) ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;

__attribute__((used)) static bool page_address_valid(struct kvm_vcpu *vcpu, gpa_t gpa)
{
 return PAGE_ALIGNED(gpa) && !(gpa >> cpuid_maxphyaddr(vcpu));
}
