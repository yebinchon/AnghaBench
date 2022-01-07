
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prcm_config {long mpu_speed; int flags; scalar_t__ xtal_speed; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int cpu_mask ;
 struct prcm_config* rate_table ;
 scalar_t__ sys_ck_rate ;

long omap2_round_to_table_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 const struct prcm_config *ptr;
 long highest_rate;

 highest_rate = -EINVAL;

 for (ptr = rate_table; ptr->mpu_speed; ptr++) {
  if (!(ptr->flags & cpu_mask))
   continue;
  if (ptr->xtal_speed != sys_ck_rate)
   continue;

  highest_rate = ptr->mpu_speed;


  if (ptr->mpu_speed <= rate)
   break;
 }
 return highest_rate;
}
