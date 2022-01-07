
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_sel {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;


 int __sel_commit (struct ccu_data*,struct bcm_clk_gate*,struct bcm_clk_sel*,struct bcm_clk_trig*) ;
 int selector_exists (struct bcm_clk_sel*) ;

__attribute__((used)) static bool sel_init(struct ccu_data *ccu, struct bcm_clk_gate *gate,
   struct bcm_clk_sel *sel, struct bcm_clk_trig *trig)
{
 if (!selector_exists(sel))
  return 1;
 return !__sel_commit(ccu, gate, sel, trig);
}
