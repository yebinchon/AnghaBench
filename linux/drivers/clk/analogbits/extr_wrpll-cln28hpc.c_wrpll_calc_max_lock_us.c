
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrpll_cfg {int dummy; } ;


 unsigned int MAX_LOCK_US ;

unsigned int wrpll_calc_max_lock_us(const struct wrpll_cfg *c)
{
 return MAX_LOCK_US;
}
