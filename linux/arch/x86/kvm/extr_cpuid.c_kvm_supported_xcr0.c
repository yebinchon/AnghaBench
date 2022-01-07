
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KVM_SUPPORTED_XCR0 ;
 int XFEATURE_MASK_BNDCSR ;
 int XFEATURE_MASK_BNDREGS ;
 int host_xcr0 ;
 int kvm_mpx_supported () ;

u64 kvm_supported_xcr0(void)
{
 u64 xcr0 = KVM_SUPPORTED_XCR0 & host_xcr0;

 if (!kvm_mpx_supported())
  xcr0 &= ~(XFEATURE_MASK_BNDREGS | XFEATURE_MASK_BNDCSR);

 return xcr0;
}
