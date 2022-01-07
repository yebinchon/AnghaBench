
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ rt_intc_membase ;
 scalar_t__* rt_intc_regs ;

__attribute__((used)) static inline void rt_intc_w32(u32 val, unsigned reg)
{
 __raw_writel(val, rt_intc_membase + rt_intc_regs[reg]);
}
