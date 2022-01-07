
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {scalar_t__ registers; } ;


 scalar_t__ I810_PGETBL_CTL ;
 unsigned int I810_PGETBL_ENABLED ;
 scalar_t__ I965_PGETBL_CTL2 ;
 unsigned int I965_PGETBL_SIZE_MASK ;
 TYPE_1__ intel_private ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void i965_adjust_pgetbl_size(unsigned int size_flag)
{
 u32 pgetbl_ctl, pgetbl_ctl2;


 pgetbl_ctl2 = readl(intel_private.registers+I965_PGETBL_CTL2);
 pgetbl_ctl2 &= ~I810_PGETBL_ENABLED;
 writel(pgetbl_ctl2, intel_private.registers+I965_PGETBL_CTL2);


 pgetbl_ctl = readl(intel_private.registers+I810_PGETBL_CTL);
 pgetbl_ctl &= ~I965_PGETBL_SIZE_MASK;
 pgetbl_ctl |= size_flag;
 writel(pgetbl_ctl, intel_private.registers+I810_PGETBL_CTL);
}
