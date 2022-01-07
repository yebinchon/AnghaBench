
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int clk_disable_unprepare (int ) ;
 scalar_t__ cpu_is_pxa310 () ;
 int pxa310_stop_otg_hc () ;
 TYPE_1__* u2d ;

void pxa3xx_u2d_stop_hc(struct usb_bus *host)
{

 if (!u2d)
  return;

 if (cpu_is_pxa310())
  pxa310_stop_otg_hc();

 clk_disable_unprepare(u2d->clk);
}
