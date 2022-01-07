
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SCTLR_EL1_SED ;
 int cpu_supports_mixed_endian_el0 () ;
 int sctlr_el1 ;
 int sysreg_clear_set (int ,int ,int ) ;

__attribute__((used)) static int setend_set_hw_mode(bool enable)
{
 if (!cpu_supports_mixed_endian_el0())
  return -EINVAL;

 if (enable)
  sysreg_clear_set(sctlr_el1, SCTLR_EL1_SED, 0);
 else
  sysreg_clear_set(sctlr_el1, 0, SCTLR_EL1_SED);
 return 0;
}
