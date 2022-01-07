
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ core; } ;


 int IS_ERR_OR_NULL (struct clk const*) ;

bool clk_is_match(const struct clk *p, const struct clk *q)
{

 if (p == q)
  return 1;


 if (!IS_ERR_OR_NULL(p) && !IS_ERR_OR_NULL(q))
  if (p->core == q->core)
   return 1;

 return 0;
}
