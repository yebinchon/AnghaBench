
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {long rate; long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 long INT_MAX ;
 long alchemy_calc_div (long,long,int,int,int *) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 long clk_hw_get_rate (struct clk_hw*) ;
 int clk_hw_is_prepared (struct clk_hw*) ;
 long clk_hw_round_rate (struct clk_hw*,long) ;

__attribute__((used)) static int alchemy_clk_fgcs_detr(struct clk_hw *hw,
     struct clk_rate_request *req,
     int scale, int maxdiv)
{
 struct clk_hw *pc, *bpc, *free;
 long tdv, tpr, pr, nr, br, bpr, diff, lastdiff;
 int j;

 lastdiff = INT_MAX;
 bpr = 0;
 bpc = ((void*)0);
 br = -EINVAL;
 free = ((void*)0);




 for (j = 0; j < 7; j++) {
  pc = clk_hw_get_parent_by_index(hw, j);
  if (!pc)
   break;





  if (!clk_hw_is_prepared(pc)) {
   if (!free)
    free = pc;
  }

  pr = clk_hw_get_rate(pc);
  if (pr < req->rate)
   continue;


  tdv = alchemy_calc_div(req->rate, pr, scale, maxdiv, ((void*)0));
  nr = pr / tdv;
  diff = req->rate - nr;
  if (nr > req->rate)
   continue;

  if (diff < lastdiff) {
   lastdiff = diff;
   bpr = pr;
   bpc = pc;
   br = nr;
  }
  if (diff == 0)
   break;
 }





 if (lastdiff && free) {
  for (j = (maxdiv == 4) ? 1 : scale; j <= maxdiv; j += scale) {
   tpr = req->rate * j;
   if (tpr < 0)
    break;
   pr = clk_hw_round_rate(free, tpr);

   tdv = alchemy_calc_div(req->rate, pr, scale, maxdiv,
            ((void*)0));
   nr = pr / tdv;
   diff = req->rate - nr;
   if (nr > req->rate)
    continue;
   if (diff < lastdiff) {
    lastdiff = diff;
    bpr = pr;
    bpc = free;
    br = nr;
   }
   if (diff == 0)
    break;
  }
 }

 if (br < 0)
  return br;

 req->best_parent_rate = bpr;
 req->best_parent_hw = bpc;
 req->rate = br;

 return 0;
}
