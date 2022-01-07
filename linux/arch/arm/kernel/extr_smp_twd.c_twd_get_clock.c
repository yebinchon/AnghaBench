
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ PTR_ERR (int ) ;
 int clk_get_rate (int ) ;
 int clk_get_sys (char*,int *) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int of_clk_get (struct device_node*,int ) ;
 int pr_err (char*,int) ;
 int twd_clk ;
 int twd_timer_rate ;

__attribute__((used)) static void twd_get_clock(struct device_node *np)
{
 int err;

 if (np)
  twd_clk = of_clk_get(np, 0);
 else
  twd_clk = clk_get_sys("smp_twd", ((void*)0));

 if (IS_ERR(twd_clk)) {
  pr_err("smp_twd: clock not found %d\n", (int) PTR_ERR(twd_clk));
  return;
 }

 err = clk_prepare_enable(twd_clk);
 if (err) {
  pr_err("smp_twd: clock failed to prepare+enable: %d\n", err);
  clk_put(twd_clk);
  return;
 }

 twd_timer_rate = clk_get_rate(twd_clk);
}
