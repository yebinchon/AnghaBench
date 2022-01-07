
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __TASK_UNMAPPED_BASE (unsigned long) ;

__attribute__((used)) static unsigned long mmap_legacy_base(unsigned long rnd,
          unsigned long task_size)
{
 return __TASK_UNMAPPED_BASE(task_size) + rnd;
}
