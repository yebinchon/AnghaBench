
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (scalar_t__) ;
 scalar_t__ rt_intc_membase ;
 scalar_t__* rt_intc_regs ;

__attribute__((used)) static inline u32 rt_intc_r32(unsigned reg)
{
 return __raw_readl(rt_intc_membase + rt_intc_regs[reg]);
}
