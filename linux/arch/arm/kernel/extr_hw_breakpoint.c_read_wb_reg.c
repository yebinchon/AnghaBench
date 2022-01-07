
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_OP2_BCR ;
 int ARM_OP2_BVR ;
 int ARM_OP2_WCR ;
 int ARM_OP2_WVR ;
 int GEN_READ_WB_REG_CASES (int ,int ) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static u32 read_wb_reg(int n)
{
 u32 val = 0;

 switch (n) {
 GEN_READ_WB_REG_CASES(ARM_OP2_BVR, val);
 GEN_READ_WB_REG_CASES(ARM_OP2_BCR, val);
 GEN_READ_WB_REG_CASES(ARM_OP2_WVR, val);
 GEN_READ_WB_REG_CASES(ARM_OP2_WCR, val);
 default:
  pr_warn("attempt to read from unknown breakpoint register %d\n",
   n);
 }

 return val;
}
