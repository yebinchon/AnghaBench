
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_BVR ;
 int AARCH64_DBG_REG_NAME_BCR ;
 int AARCH64_DBG_REG_NAME_BVR ;
 int AARCH64_DBG_REG_NAME_WCR ;
 int AARCH64_DBG_REG_NAME_WVR ;
 int AARCH64_DBG_REG_WCR ;
 int AARCH64_DBG_REG_WVR ;
 int GEN_WRITE_WB_REG_CASES (int ,int ,int ) ;
 int isb () ;
 int pr_warning (char*,int) ;

__attribute__((used)) static void write_wb_reg(int reg, int n, u64 val)
{
 switch (reg + n) {
 GEN_WRITE_WB_REG_CASES(AARCH64_DBG_REG_BVR, AARCH64_DBG_REG_NAME_BVR, val);
 GEN_WRITE_WB_REG_CASES(AARCH64_DBG_REG_BCR, AARCH64_DBG_REG_NAME_BCR, val);
 GEN_WRITE_WB_REG_CASES(AARCH64_DBG_REG_WVR, AARCH64_DBG_REG_NAME_WVR, val);
 GEN_WRITE_WB_REG_CASES(AARCH64_DBG_REG_WCR, AARCH64_DBG_REG_NAME_WCR, val);
 default:
  pr_warning("attempt to write to unknown breakpoint register %d\n", n);
 }
 isb();
}
