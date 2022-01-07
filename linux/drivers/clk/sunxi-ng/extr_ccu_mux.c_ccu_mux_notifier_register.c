
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct ccu_mux_nb {TYPE_1__ clk_nb; } ;


 int ccu_mux_notifier_cb ;
 int clk_notifier_register (struct clk*,TYPE_1__*) ;

int ccu_mux_notifier_register(struct clk *clk, struct ccu_mux_nb *mux_nb)
{
 mux_nb->clk_nb.notifier_call = ccu_mux_notifier_cb;

 return clk_notifier_register(clk, &mux_nb->clk_nb);
}
