
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alchemy_gpio_set_value (int,int) ;
 int udelay (int) ;

__attribute__((used)) static int mtx1_pci_idsel(unsigned int devsel, int assert)
{




 udelay(1);

 if (assert && devsel != 0)

  alchemy_gpio_set_value(1, 0);
 else
  alchemy_gpio_set_value(1, 1);

 udelay(1);
 return 1;
}
