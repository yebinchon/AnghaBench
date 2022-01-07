
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int cxl_slbia (struct mm_struct*) ;
 int spu_flush_all_slbs (struct mm_struct*) ;

void copro_flush_all_slbs(struct mm_struct *mm)
{



 cxl_slbia(mm);
}
