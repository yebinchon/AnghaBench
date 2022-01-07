
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dfll {int * dfll_clk; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int clk_unregister (int *) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void dfll_unregister_clk(struct tegra_dfll *td)
{
 of_clk_del_provider(td->dev->of_node);
 clk_unregister(td->dfll_clk);
 td->dfll_clk = ((void*)0);
}
