
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 scalar_t__ ATARI_ETHERNAT_PHYS_ADDR ;
 int* enat_cpld ;
 scalar_t__ ioremap (scalar_t__,int) ;
 int m68k_irq_startup (struct irq_data*) ;

__attribute__((used)) static unsigned int atari_ethernat_startup(struct irq_data *data)
{
 int enat_num = 140 - data->irq + 1;

 m68k_irq_startup(data);



 if (!enat_cpld)
  enat_cpld = (unsigned char *)ioremap((ATARI_ETHERNAT_PHYS_ADDR+0x23), 0x2);






 if (enat_num == 1)
  *enat_cpld |= 1 << enat_num;

 return 0;
}
