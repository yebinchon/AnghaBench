
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rt_timer {scalar_t__ membase; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void rt_timer_w32(struct rt_timer *rt, u8 reg, u32 val)
{
 __raw_writel(val, rt->membase + reg);
}
