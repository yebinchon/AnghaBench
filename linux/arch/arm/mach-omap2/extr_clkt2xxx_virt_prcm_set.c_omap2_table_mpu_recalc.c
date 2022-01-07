
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long mpu_speed; } ;


 TYPE_1__* curr_prcm_set ;

unsigned long omap2_table_mpu_recalc(struct clk_hw *clk,
         unsigned long parent_rate)
{
 return curr_prcm_set->mpu_speed;
}
