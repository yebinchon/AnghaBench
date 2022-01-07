
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 int WARN_ONCE (int,char*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 WARN_ONCE(1, "clk_set_parent() not implemented for OMAP1\n");

 return -EINVAL;
}
