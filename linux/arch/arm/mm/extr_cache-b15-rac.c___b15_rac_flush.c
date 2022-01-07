
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FLUSH_RAC ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ b15_rac_base ;
 int dmb () ;
 scalar_t__ rac_flush_offset ;

__attribute__((used)) static inline void __b15_rac_flush(void)
{
 u32 reg;

 __raw_writel(FLUSH_RAC, b15_rac_base + rac_flush_offset);
 do {




  dmb();
  reg = __raw_readl(b15_rac_base + rac_flush_offset);
 } while (reg & FLUSH_RAC);
}
