
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int clk_prepare_enable (int ) ;
 scalar_t__ cpu_is_pxa310 () ;
 int pxa310_start_otg_hc (struct usb_bus*) ;
 int pxa310_u2d_setup_otg_hc () ;
 TYPE_1__* u2d ;

int pxa3xx_u2d_start_hc(struct usb_bus *host)
{
 int err = 0;


 if (!u2d)
  return 0;

 clk_prepare_enable(u2d->clk);

 if (cpu_is_pxa310()) {
  pxa310_u2d_setup_otg_hc();
  err = pxa310_start_otg_hc(host);
 }

 return err;
}
