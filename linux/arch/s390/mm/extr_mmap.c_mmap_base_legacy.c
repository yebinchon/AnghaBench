
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TASK_UNMAPPED_BASE ;

__attribute__((used)) static unsigned long mmap_base_legacy(unsigned long rnd)
{
 return TASK_UNMAPPED_BASE + rnd;
}
