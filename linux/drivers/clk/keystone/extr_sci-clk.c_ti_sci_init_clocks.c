
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_clk_provider {int num_clocks; int * clocks; } ;


 int _sci_clk_build (struct sci_clk_provider*,int ) ;

__attribute__((used)) static int ti_sci_init_clocks(struct sci_clk_provider *p)
{
 int i;
 int ret;

 for (i = 0; i < p->num_clocks; i++) {
  ret = _sci_clk_build(p, p->clocks[i]);
  if (ret)
   return ret;
 }

 return 0;
}
