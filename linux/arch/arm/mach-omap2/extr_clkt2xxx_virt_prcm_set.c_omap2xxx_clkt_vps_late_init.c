
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int WARN (int,char*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int sys_ck_rate ;

void omap2xxx_clkt_vps_late_init(void)
{
 struct clk *c;

 c = clk_get(((void*)0), "sys_ck");
 if (IS_ERR(c)) {
  WARN(1, "could not locate sys_ck\n");
 } else {
  sys_ck_rate = clk_get_rate(c);
  clk_put(c);
 }
}
