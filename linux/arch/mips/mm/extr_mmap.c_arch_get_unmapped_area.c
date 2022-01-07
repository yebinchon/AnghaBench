
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int UP ;
 unsigned long arch_get_unmapped_area_common (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,int ) ;

unsigned long arch_get_unmapped_area(struct file *filp, unsigned long addr0,
 unsigned long len, unsigned long pgoff, unsigned long flags)
{
 return arch_get_unmapped_area_common(filp,
   addr0, len, pgoff, flags, UP);
}
