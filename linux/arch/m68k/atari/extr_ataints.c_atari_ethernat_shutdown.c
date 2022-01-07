
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int* enat_cpld ;
 int iounmap (int*) ;

__attribute__((used)) static void atari_ethernat_shutdown(struct irq_data *data)
{
 int enat_num = 140 - data->irq + 1;
 if (enat_cpld) {
  *enat_cpld &= ~(1 << enat_num);
  iounmap(enat_cpld);
  enat_cpld = ((void*)0);
 }
}
