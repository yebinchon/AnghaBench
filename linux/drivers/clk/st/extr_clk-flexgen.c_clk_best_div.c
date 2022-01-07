
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
clk_best_div(unsigned long parent_rate, unsigned long rate)
{
 return parent_rate / rate + ((rate > (2*(parent_rate % rate))) ? 0 : 1);
}
