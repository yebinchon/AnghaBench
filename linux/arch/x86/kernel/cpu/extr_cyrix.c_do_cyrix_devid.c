
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __do_cyrix_devid (unsigned char*,unsigned char*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void do_cyrix_devid(unsigned char *dir0, unsigned char *dir1)
{
 unsigned long flags;

 local_irq_save(flags);
 __do_cyrix_devid(dir0, dir1);
 local_irq_restore(flags);
}
