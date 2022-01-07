
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ccu_data {size_t clk_num; TYPE_1__* kona_clks; } ;
struct TYPE_2__ {int hw; } ;


 int kona_clk_teardown (int *) ;

__attribute__((used)) static void ccu_clks_teardown(struct ccu_data *ccu)
{
 u32 i;

 for (i = 0; i < ccu->clk_num; i++)
  kona_clk_teardown(&ccu->kona_clks[i].hw);
}
