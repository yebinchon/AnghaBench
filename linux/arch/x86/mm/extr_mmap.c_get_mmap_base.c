
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {unsigned long mmap_compat_legacy_base; unsigned long mmap_compat_base; unsigned long mmap_legacy_base; unsigned long mmap_base; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 scalar_t__ in_32bit_syscall () ;

unsigned long get_mmap_base(int is_legacy)
{
 struct mm_struct *mm = current->mm;







 return is_legacy ? mm->mmap_legacy_base : mm->mmap_base;
}
