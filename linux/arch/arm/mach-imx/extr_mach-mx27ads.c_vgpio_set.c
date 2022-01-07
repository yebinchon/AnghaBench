
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int PBC_BCTRL1_CLEAR_REG ;
 int PBC_BCTRL1_LCDON ;
 int PBC_BCTRL1_SET_REG ;
 int imx_writew (int ,int ) ;

__attribute__((used)) static void vgpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (value)
  imx_writew(PBC_BCTRL1_LCDON, PBC_BCTRL1_SET_REG);
 else
  imx_writew(PBC_BCTRL1_LCDON, PBC_BCTRL1_CLEAR_REG);
}
