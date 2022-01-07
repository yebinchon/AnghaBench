
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; int max_rate; int min_rate; } ;
struct clk {int core; scalar_t__ exclusive_count; } ;


 int clk_core_get_boundaries (int ,int *,int *) ;
 int clk_core_rate_protect (int ) ;
 int clk_core_rate_unprotect (int ) ;
 int clk_core_round_rate_nolock (int ,struct clk_rate_request*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 struct clk_rate_request req;
 int ret;

 if (!clk)
  return 0;

 clk_prepare_lock();

 if (clk->exclusive_count)
  clk_core_rate_unprotect(clk->core);

 clk_core_get_boundaries(clk->core, &req.min_rate, &req.max_rate);
 req.rate = rate;

 ret = clk_core_round_rate_nolock(clk->core, &req);

 if (clk->exclusive_count)
  clk_core_rate_protect(clk->core);

 clk_prepare_unlock();

 if (ret)
  return ret;

 return req.rate;
}
