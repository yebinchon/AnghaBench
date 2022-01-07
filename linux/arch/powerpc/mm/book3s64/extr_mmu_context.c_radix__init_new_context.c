
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hash_context; } ;
struct mm_struct {TYPE_1__ context; int pgd; } ;
struct TYPE_4__ {int prtb0; } ;


 unsigned long RADIX_PGD_INDEX_SIZE ;
 unsigned long __pa (int ) ;
 int alloc_context_id (int ,int) ;
 int cpu_to_be64 (unsigned long) ;
 int mmu_base_pid ;
 int mmu_pid_bits ;
 TYPE_2__* process_tb ;
 unsigned long radix__get_tree_size () ;

__attribute__((used)) static int radix__init_new_context(struct mm_struct *mm)
{
 unsigned long rts_field;
 int index, max_id;

 max_id = (1 << mmu_pid_bits) - 1;
 index = alloc_context_id(mmu_base_pid, max_id);
 if (index < 0)
  return index;




 rts_field = radix__get_tree_size();
 process_tb[index].prtb0 = cpu_to_be64(rts_field | __pa(mm->pgd) | RADIX_PGD_INDEX_SIZE);







 asm volatile("ptesync;isync" : : : "memory");

 mm->context.hash_context = ((void*)0);

 return index;
}
