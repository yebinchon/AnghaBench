
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int FIRST_CONTEXT ;
 unsigned int LAST_CONTEXT ;
 int MMU_NO_CONTEXT ;
 int __clear_bit (unsigned int,int ) ;
 int _tlbil_all () ;
 int context_map ;
 struct mm_struct** context_mm ;
 unsigned int nr_free_contexts ;
 int pr_hardcont (char*,unsigned int,struct mm_struct*) ;
 int smp_processor_id () ;
 int * stale_map ;

__attribute__((used)) static unsigned int steal_all_contexts(void)
{
 struct mm_struct *mm;



 unsigned int id;

 for (id = FIRST_CONTEXT; id <= LAST_CONTEXT; id++) {

  mm = context_mm[id];

  pr_hardcont(" | steal %d from 0x%p", id, mm);


  mm->context.id = MMU_NO_CONTEXT;
  if (id != FIRST_CONTEXT) {
   context_mm[id] = ((void*)0);
   __clear_bit(id, context_map);



  }



 }


 _tlbil_all();

 nr_free_contexts = LAST_CONTEXT - FIRST_CONTEXT;

 return FIRST_CONTEXT;
}
