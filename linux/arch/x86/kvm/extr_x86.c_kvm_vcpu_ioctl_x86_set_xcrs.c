
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_xcrs {int nr_xcrs; TYPE_1__* xcrs; scalar_t__ flags; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ xcr; int value; } ;


 int EINVAL ;
 int KVM_MAX_XCRS ;
 int X86_FEATURE_XSAVE ;
 scalar_t__ XCR_XFEATURE_ENABLED_MASK ;
 int __kvm_set_xcr (struct kvm_vcpu*,scalar_t__,int ) ;
 int boot_cpu_has (int ) ;

__attribute__((used)) static int kvm_vcpu_ioctl_x86_set_xcrs(struct kvm_vcpu *vcpu,
           struct kvm_xcrs *guest_xcrs)
{
 int i, r = 0;

 if (!boot_cpu_has(X86_FEATURE_XSAVE))
  return -EINVAL;

 if (guest_xcrs->nr_xcrs > KVM_MAX_XCRS || guest_xcrs->flags)
  return -EINVAL;

 for (i = 0; i < guest_xcrs->nr_xcrs; i++)

  if (guest_xcrs->xcrs[i].xcr == XCR_XFEATURE_ENABLED_MASK) {
   r = __kvm_set_xcr(vcpu, XCR_XFEATURE_ENABLED_MASK,
    guest_xcrs->xcrs[i].value);
   break;
  }
 if (r)
  r = -EINVAL;
 return r;
}
