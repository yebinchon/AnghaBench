
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long mmap_base; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long TASK_SIZE ;
 TYPE_2__* current ;
 unsigned long get_random_int () ;

unsigned long inline vdso_random_addr(unsigned long vdso_mapping_len)
{
 unsigned long start = current->mm->mmap_base, end, offset, addr;
 start = PAGE_ALIGN(start);


 end = (start + vdso_mapping_len + PMD_SIZE - 1) & PMD_MASK;
 if (end >= TASK_SIZE)
  end = TASK_SIZE;
 end -= vdso_mapping_len;

 if (end > start) {
  offset = get_random_int() % (((end - start) >> PAGE_SHIFT) + 1);
  addr = start + (offset << PAGE_SHIFT);
 } else {
  addr = start;
 }
 return addr;
}
