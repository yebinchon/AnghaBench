
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t id; int iommu_group_mem_list; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {scalar_t__ prtb0; } ;


 size_t MMU_NO_CONTEXT ;
 int WARN_ON_ONCE (int) ;
 int destroy_contexts (TYPE_2__*) ;
 int list_empty (int *) ;
 TYPE_1__* process_tb ;
 scalar_t__ radix_enabled () ;
 int subpage_prot_free (struct mm_struct*) ;

void destroy_context(struct mm_struct *mm)
{
 if (radix_enabled())
  process_tb[mm->context.id].prtb0 = 0;
 else
  subpage_prot_free(mm);
 destroy_contexts(&mm->context);
 mm->context.id = MMU_NO_CONTEXT;
}
