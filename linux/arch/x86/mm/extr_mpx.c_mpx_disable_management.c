
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bd_addr; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int ENXIO ;
 int MPX_INVALID_BOUNDS_DIR ;
 int X86_FEATURE_MPX ;
 int cpu_feature_enabled (int ) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int up_write (int *) ;

int mpx_disable_management(void)
{
 struct mm_struct *mm = current->mm;

 if (!cpu_feature_enabled(X86_FEATURE_MPX))
  return -ENXIO;

 down_write(&mm->mmap_sem);
 mm->context.bd_addr = MPX_INVALID_BOUNDS_DIR;
 up_write(&mm->mmap_sem);
 return 0;
}
