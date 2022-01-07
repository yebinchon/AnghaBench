
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PRCM_A9_MASK_REQ ;
 int PRCM_A9_MASK_REQ_PRCM_A9_MASK_REQ ;
 int readl (int ) ;
 int writel (int,int ) ;

int prcmu_gic_recouple(void)
{
 u32 val = readl(PRCM_A9_MASK_REQ);


 writel(val & ~PRCM_A9_MASK_REQ_PRCM_A9_MASK_REQ, PRCM_A9_MASK_REQ);

 return 0;
}
