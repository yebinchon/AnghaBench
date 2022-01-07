
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long (* get_unmapped_area ) (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;} ;


 unsigned long ENOSYS ;
 unsigned long MAP_SHARED ;
 TYPE_2__* current ;
 unsigned long shmem_get_unmapped_area (int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long stub1 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long get_unmapped_area_zero(struct file *file,
    unsigned long addr, unsigned long len,
    unsigned long pgoff, unsigned long flags)
{
 return -ENOSYS;

}
