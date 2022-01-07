
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int copy_mm_to_paca (struct mm_struct*) ;
 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int slb_flush_and_restore_bolted () ;

__attribute__((used)) static void slice_flush_segments(void *parm)
{
}
