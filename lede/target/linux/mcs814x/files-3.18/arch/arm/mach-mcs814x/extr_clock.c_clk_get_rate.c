
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {unsigned long rate; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* get_rate ) (struct clk*) ;} ;


 int IS_ERR_OR_NULL (struct clk*) ;
 unsigned long stub1 (struct clk*) ;
 scalar_t__ unlikely (int ) ;

unsigned long clk_get_rate(struct clk *clk)
{
 if (unlikely(IS_ERR_OR_NULL(clk)))
  return 0;

 if (clk->rate)
  return clk->rate;

 if (clk->ops && clk->ops->get_rate)
  return clk->ops->get_rate(clk);

 return clk_get_rate(clk->parent);
}
