
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_NX ;
 int _PAGE_NX ;
 int __supported_pte_mask ;
 scalar_t__ boot_cpu_has (int ) ;
 int disable_nx ;

void x86_configure_nx(void)
{
 if (boot_cpu_has(X86_FEATURE_NX) && !disable_nx)
  __supported_pte_mask |= _PAGE_NX;
 else
  __supported_pte_mask &= ~_PAGE_NX;
}
