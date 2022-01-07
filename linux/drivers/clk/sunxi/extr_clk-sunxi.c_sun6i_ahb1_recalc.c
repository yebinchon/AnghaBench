
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct factors_request {int rate; int parent_rate; scalar_t__ parent_index; int m; int p; } ;


 scalar_t__ SUN6I_AHB1_PARENT_PLL6 ;

__attribute__((used)) static void sun6i_ahb1_recalc(struct factors_request *req)
{
 req->rate = req->parent_rate;


 if (req->parent_index == SUN6I_AHB1_PARENT_PLL6)
  req->rate /= req->m + 1;


 req->rate >>= req->p;
}
