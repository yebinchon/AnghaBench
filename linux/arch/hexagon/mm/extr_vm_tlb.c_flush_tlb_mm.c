
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ptbase; } ;
struct mm_struct {TYPE_3__ context; } ;
struct TYPE_8__ {TYPE_2__* active_mm; } ;
struct TYPE_5__ {scalar_t__ ptbase; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 TYPE_4__* current ;
 int tlb_flush_all () ;

void flush_tlb_mm(struct mm_struct *mm)
{

 if (current->active_mm->context.ptbase == mm->context.ptbase)
  tlb_flush_all();
}
