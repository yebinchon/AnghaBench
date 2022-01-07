
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb2_clock_sel_priv {scalar_t__ base; int xtal; scalar_t__ extal; } ;


 int CLKSET0_PRIVATE ;
 scalar_t__ USB20_CLKSET0 ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void usb2_clock_sel_disable_extal_only(struct usb2_clock_sel_priv *priv)
{
 if (priv->extal && !priv->xtal)
  writew(CLKSET0_PRIVATE, priv->base + USB20_CLKSET0);
}
