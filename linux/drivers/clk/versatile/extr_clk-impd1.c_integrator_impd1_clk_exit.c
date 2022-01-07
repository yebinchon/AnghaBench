
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct impd1_clk {int pclkname; int vco1name; int vco2name; int uartname; int spiname; int scname; int pclk; int vco1clk; int vco2clk; int uartclk; int spiclk; int * clks; } ;


 int ARRAY_SIZE (int *) ;
 int clk_unregister (int ) ;
 int clkdev_drop (int ) ;
 struct impd1_clk* impd1_clks ;
 int kfree (int ) ;

void integrator_impd1_clk_exit(unsigned int id)
{
 int i;
 struct impd1_clk *imc;

 if (id > 3)
  return;
 imc = &impd1_clks[id];

 for (i = 0; i < ARRAY_SIZE(imc->clks); i++)
  clkdev_drop(imc->clks[i]);
 clk_unregister(imc->spiclk);
 clk_unregister(imc->uartclk);
 clk_unregister(imc->vco2clk);
 clk_unregister(imc->vco1clk);
 clk_unregister(imc->pclk);
 kfree(imc->scname);
 kfree(imc->spiname);
 kfree(imc->uartname);
 kfree(imc->vco2name);
 kfree(imc->vco1name);
 kfree(imc->pclkname);
}
