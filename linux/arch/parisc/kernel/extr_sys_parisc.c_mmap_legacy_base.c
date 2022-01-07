
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TASK_UNMAPPED_BASE ;
 unsigned long mmap_rnd () ;

__attribute__((used)) static unsigned long mmap_legacy_base(void)
{
 return TASK_UNMAPPED_BASE + mmap_rnd();
}
