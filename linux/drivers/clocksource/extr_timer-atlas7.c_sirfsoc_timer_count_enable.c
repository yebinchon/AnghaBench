
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIRFSOC_TIMER_32COUNTER_0_CTRL ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ sirfsoc_timer_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void sirfsoc_timer_count_enable(int idx)
{
 writel_relaxed(readl_relaxed(sirfsoc_timer_base + SIRFSOC_TIMER_32COUNTER_0_CTRL + 4 * idx) | 0x3,
  sirfsoc_timer_base + SIRFSOC_TIMER_32COUNTER_0_CTRL + 4 * idx);
}
