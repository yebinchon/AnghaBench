
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ RAC_CONFIG0_REG ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ b15_rac_base ;
 int dsb () ;

__attribute__((used)) static inline void __b15_rac_enable(u32 val)
{
 __raw_writel(val, b15_rac_base + RAC_CONFIG0_REG);

 dsb();
}
