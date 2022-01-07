
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCTLR_EL1_CP15BEN ;
 int sctlr_el1 ;
 int sysreg_clear_set (int ,int ,int ) ;

__attribute__((used)) static int cp15_barrier_set_hw_mode(bool enable)
{
 if (enable)
  sysreg_clear_set(sctlr_el1, 0, SCTLR_EL1_CP15BEN);
 else
  sysreg_clear_set(sctlr_el1, SCTLR_EL1_CP15BEN, 0);
 return 0;
}
