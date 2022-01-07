
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_OP2_BCR ;
 int ARM_OP2_BVR ;
 int ARM_OP2_WCR ;
 int ARM_OP2_WVR ;
 int GEN_WRITE_WB_REG_CASES (int ,int ) ;
 int isb () ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void write_wb_reg(int n, u32 val)
{
 switch (n) {
 GEN_WRITE_WB_REG_CASES(ARM_OP2_BVR, val);
 GEN_WRITE_WB_REG_CASES(ARM_OP2_BCR, val);
 GEN_WRITE_WB_REG_CASES(ARM_OP2_WVR, val);
 GEN_WRITE_WB_REG_CASES(ARM_OP2_WCR, val);
 default:
  pr_warn("attempt to write to unknown breakpoint register %d\n",
   n);
 }
 isb();
}
