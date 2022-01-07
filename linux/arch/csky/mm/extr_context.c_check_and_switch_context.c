
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asid; } ;
struct mm_struct {TYPE_1__ context; } ;


 int asid_check_context (int *,int *,unsigned int,struct mm_struct*) ;
 int asid_info ;

void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
{
 asid_check_context(&asid_info, &mm->context.asid, cpu, mm);
}
