
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ONCE (int,char*) ;
 int X86_CR4_OSXSAVE ;
 int X86_FEATURE_XSAVE ;
 int XCR_XFEATURE_ENABLED_MASK ;
 int XFEATURE_MASK_SUPERVISOR ;
 int boot_cpu_has (int ) ;
 int cr4_set_bits (int ) ;
 int xfeatures_mask ;
 int xsetbv (int ,int) ;

void fpu__init_cpu_xstate(void)
{
 if (!boot_cpu_has(X86_FEATURE_XSAVE) || !xfeatures_mask)
  return;





 WARN_ONCE((xfeatures_mask & XFEATURE_MASK_SUPERVISOR),
  "x86/fpu: XSAVES supervisor states are not yet implemented.\n");

 xfeatures_mask &= ~XFEATURE_MASK_SUPERVISOR;

 cr4_set_bits(X86_CR4_OSXSAVE);
 xsetbv(XCR_XFEATURE_ENABLED_MASK, xfeatures_mask);
}
