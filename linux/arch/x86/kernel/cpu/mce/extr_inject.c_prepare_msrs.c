
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mce {scalar_t__ inject_flags; int misc; int addr; int status; int synd; int mcgstatus; int bank; } ;


 scalar_t__ DFR_INT_INJ ;
 int MSR_AMD64_SMCA_MCx_ADDR (int ) ;
 int MSR_AMD64_SMCA_MCx_DEADDR (int ) ;
 int MSR_AMD64_SMCA_MCx_DESTAT (int ) ;
 int MSR_AMD64_SMCA_MCx_MISC (int ) ;
 int MSR_AMD64_SMCA_MCx_STATUS (int ) ;
 int MSR_AMD64_SMCA_MCx_SYND (int ) ;
 int MSR_IA32_MCG_STATUS ;
 int MSR_IA32_MCx_ADDR (int ) ;
 int MSR_IA32_MCx_MISC (int ) ;
 int MSR_IA32_MCx_STATUS (int ) ;
 int X86_FEATURE_SMCA ;
 scalar_t__ boot_cpu_has (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void prepare_msrs(void *info)
{
 struct mce m = *(struct mce *)info;
 u8 b = m.bank;

 wrmsrl(MSR_IA32_MCG_STATUS, m.mcgstatus);

 if (boot_cpu_has(X86_FEATURE_SMCA)) {
  if (m.inject_flags == DFR_INT_INJ) {
   wrmsrl(MSR_AMD64_SMCA_MCx_DESTAT(b), m.status);
   wrmsrl(MSR_AMD64_SMCA_MCx_DEADDR(b), m.addr);
  } else {
   wrmsrl(MSR_AMD64_SMCA_MCx_STATUS(b), m.status);
   wrmsrl(MSR_AMD64_SMCA_MCx_ADDR(b), m.addr);
  }

  wrmsrl(MSR_AMD64_SMCA_MCx_MISC(b), m.misc);
  wrmsrl(MSR_AMD64_SMCA_MCx_SYND(b), m.synd);
 } else {
  wrmsrl(MSR_IA32_MCx_STATUS(b), m.status);
  wrmsrl(MSR_IA32_MCx_ADDR(b), m.addr);
  wrmsrl(MSR_IA32_MCx_MISC(b), m.misc);
 }
}
