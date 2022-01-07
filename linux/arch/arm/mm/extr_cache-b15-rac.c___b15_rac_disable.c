
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ RAC_CONFIG0_REG ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ b15_rac_base ;
 int dmb () ;

__attribute__((used)) static inline u32 __b15_rac_disable(void)
{
 u32 val = __raw_readl(b15_rac_base + RAC_CONFIG0_REG);
 __raw_writel(0, b15_rac_base + RAC_CONFIG0_REG);
 dmb();
 return val;
}
