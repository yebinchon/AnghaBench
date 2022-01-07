
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; int max_rate; int min_rate; } ;
struct clk_core {int dummy; } ;


 int clk_core_get_boundaries (struct clk_core*,int *,int *) ;
 int clk_core_rate_nuke_protect (struct clk_core*) ;
 int clk_core_rate_restore_protect (struct clk_core*,int) ;
 int clk_core_round_rate_nolock (struct clk_core*,struct clk_rate_request*) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static unsigned long clk_core_req_round_rate_nolock(struct clk_core *core,
           unsigned long req_rate)
{
 int ret, cnt;
 struct clk_rate_request req;

 lockdep_assert_held(&prepare_lock);

 if (!core)
  return 0;


 cnt = clk_core_rate_nuke_protect(core);
 if (cnt < 0)
  return cnt;

 clk_core_get_boundaries(core, &req.min_rate, &req.max_rate);
 req.rate = req_rate;

 ret = clk_core_round_rate_nolock(core, &req);


 clk_core_rate_restore_protect(core, cnt);

 return ret ? 0 : req.rate;
}
