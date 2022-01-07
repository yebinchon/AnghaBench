
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* mpx_supported ) () ;} ;


 int XFEATURE_MASK_BNDCSR ;
 int XFEATURE_MASK_BNDREGS ;
 int host_xcr0 ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ stub1 () ;

bool kvm_mpx_supported(void)
{
 return ((host_xcr0 & (XFEATURE_MASK_BNDREGS | XFEATURE_MASK_BNDCSR))
   && kvm_x86_ops->mpx_supported());
}
