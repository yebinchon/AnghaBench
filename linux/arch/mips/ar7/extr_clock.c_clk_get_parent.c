
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int WARN_ON (struct clk*) ;

struct clk *clk_get_parent(struct clk *clk)
{
 WARN_ON(clk);
 return ((void*)0);
}
