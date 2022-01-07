
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_clk {scalar_t__ dev_id; scalar_t__ clk_id; } ;



__attribute__((used)) static int _cmp_sci_clk(const void *a, const void *b)
{
 const struct sci_clk *ca = a;
 const struct sci_clk *cb = *(struct sci_clk **)b;

 if (ca->dev_id == cb->dev_id && ca->clk_id == cb->clk_id)
  return 0;
 if (ca->dev_id > cb->dev_id ||
     (ca->dev_id == cb->dev_id && ca->clk_id > cb->clk_id))
  return 1;
 return -1;
}
