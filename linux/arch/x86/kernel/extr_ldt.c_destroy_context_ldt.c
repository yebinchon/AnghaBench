
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ldt; } ;
struct mm_struct {TYPE_1__ context; } ;


 int free_ldt_struct (int *) ;

void destroy_context_ldt(struct mm_struct *mm)
{
 free_ldt_struct(mm->context.ldt);
 mm->context.ldt = ((void*)0);
}
