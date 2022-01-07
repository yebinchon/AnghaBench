
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pv_nbputchar ) (char) ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* romvec ;
 int stub1 (char) ;

int
prom_nbputchar(char c)
{
 unsigned long flags;
 int i = -1;

 local_irq_save(flags);
  i = (*(romvec->pv_nbputchar))(c);
 local_irq_restore(flags);
 return i;
}
