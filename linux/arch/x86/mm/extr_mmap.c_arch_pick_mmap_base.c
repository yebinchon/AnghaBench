
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 unsigned long mmap_base (unsigned long,unsigned long,struct rlimit*) ;
 scalar_t__ mmap_is_legacy () ;
 unsigned long mmap_legacy_base (unsigned long,unsigned long) ;

__attribute__((used)) static void arch_pick_mmap_base(unsigned long *base, unsigned long *legacy_base,
  unsigned long random_factor, unsigned long task_size,
  struct rlimit *rlim_stack)
{
 *legacy_base = mmap_legacy_base(random_factor, task_size);
 if (mmap_is_legacy())
  *base = *legacy_base;
 else
  *base = mmap_base(random_factor, task_size, rlim_stack);
}
