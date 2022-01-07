
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmintop_locdis (long) ;

__attribute__((used)) static void mask_irq_num(unsigned int irq)
{
 __vmintop_locdis((long) irq);
}
