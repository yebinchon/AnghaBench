
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct kona_clk {int type; TYPE_1__ u; int init_data; } ;


 int bcm_clk_none ;

 int peri_clk_teardown (int *,int *) ;

__attribute__((used)) static void bcm_clk_teardown(struct kona_clk *bcm_clk)
{
 switch (bcm_clk->type) {
 case 128:
  peri_clk_teardown(bcm_clk->u.data, &bcm_clk->init_data);
  break;
 default:
  break;
 }
 bcm_clk->u.data = ((void*)0);
 bcm_clk->type = bcm_clk_none;
}
