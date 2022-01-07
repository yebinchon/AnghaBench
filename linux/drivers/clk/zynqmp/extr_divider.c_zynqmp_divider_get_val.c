
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;

__attribute__((used)) static inline int zynqmp_divider_get_val(unsigned long parent_rate,
      unsigned long rate)
{
 return DIV_ROUND_CLOSEST(parent_rate, rate);
}
