
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int WARN_ON (struct clk*) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 WARN_ON(clk);
 return 0;
}
