
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;
 struct clk* clk_get_sys (char*,int *) ;
 int clk_put (struct clk*) ;
 int clkdev_create (struct clk*,int *,char*) ;
 int gpiod_add_lookup_table (int *) ;
 int sa1111_pcmcia_gpio_table ;

__attribute__((used)) static void lubbock_init_pcmcia(void)
{
 struct clk *clk;

 gpiod_add_lookup_table(&sa1111_pcmcia_gpio_table);


 clk = clk_get_sys("pxa2xx-pcmcia", ((void*)0));
 if (!IS_ERR(clk)) {
  clkdev_create(clk, ((void*)0), "1800");
  clk_put(clk);
 }
}
