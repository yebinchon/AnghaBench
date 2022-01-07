
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {unsigned long* msr_bitmap; } ;
struct TYPE_4__ {TYPE_1__ vmcs01; } ;


 int cpu_has_vmx_msr_bitmap () ;
 int test_bit (int,unsigned long*) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static bool msr_write_intercepted_l01(struct kvm_vcpu *vcpu, u32 msr)
{
 unsigned long *msr_bitmap;
 int f = sizeof(unsigned long);

 if (!cpu_has_vmx_msr_bitmap())
  return 1;

 msr_bitmap = to_vmx(vcpu)->vmcs01.msr_bitmap;

 if (msr <= 0x1fff) {
  return !!test_bit(msr, msr_bitmap + 0x800 / f);
 } else if ((msr >= 0xc0000000) && (msr <= 0xc0001fff)) {
  msr &= 0x1fff;
  return !!test_bit(msr, msr_bitmap + 0xc00 / f);
 }

 return 1;
}
