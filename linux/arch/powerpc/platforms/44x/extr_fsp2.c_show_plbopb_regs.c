
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PLB4OPB_GEAR ;
 scalar_t__ PLB4OPB_GEARU ;
 scalar_t__ PLB4OPB_GESR0 ;
 scalar_t__ PLB4OPB_GESR1 ;
 scalar_t__ PLB4OPB_GESR2 ;
 int mfdcr (scalar_t__) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void show_plbopb_regs(u32 base, int num)
{
 pr_err("\nPLBOPB Bridge %d:\n", num);
 pr_err("GESR0: 0x%08x\n", mfdcr(base + PLB4OPB_GESR0));
 pr_err("GESR1: 0x%08x\n", mfdcr(base + PLB4OPB_GESR1));
 pr_err("GESR2: 0x%08x\n", mfdcr(base + PLB4OPB_GESR2));
 pr_err("GEARU: 0x%08x\n", mfdcr(base + PLB4OPB_GEARU));
 pr_err("GEAR:  0x%08x\n", mfdcr(base + PLB4OPB_GEAR));
}
