
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ frac_width; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct bcm_clk_div {TYPE_2__ u; } ;


 int BUG_ON (int) ;
 scalar_t__ scaled_div_max (struct bcm_clk_div*) ;
 scalar_t__ scaled_div_min (struct bcm_clk_div*) ;

__attribute__((used)) static inline u32
divider(struct bcm_clk_div *div, u64 scaled_div)
{
 BUG_ON(scaled_div < scaled_div_min(div));
 BUG_ON(scaled_div > scaled_div_max(div));

 return (u32)(scaled_div - ((u64)1 << div->u.s.frac_width));
}
