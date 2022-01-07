
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bd_emupage_allocmap; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef TYPE_1__ mm_context_t ;


 int kfree (int ) ;

void dsemul_mm_cleanup(struct mm_struct *mm)
{
 mm_context_t *mm_ctx = &mm->context;

 kfree(mm_ctx->bd_emupage_allocmap);
}
