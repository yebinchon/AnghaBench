
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int MMU_NO_CONTEXT ;
 int __clear_bit (unsigned int,int ) ;
 struct mm_struct** context_mm ;
 int local_flush_tlb_mm (struct mm_struct*) ;
 int pr_hardcont (char*,unsigned int,struct mm_struct*) ;
 int smp_processor_id () ;
 int * stale_map ;

__attribute__((used)) static unsigned int steal_context_up(unsigned int id)
{
 struct mm_struct *mm;





 mm = context_mm[id];

 pr_hardcont(" | steal %d from 0x%p", id, mm);


 local_flush_tlb_mm(mm);


 mm->context.id = MMU_NO_CONTEXT;






 return id;
}
