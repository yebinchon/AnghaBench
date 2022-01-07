
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned long MMU_NO_CONTEXT ;
 int RIC_FLUSH_TLB ;
 int _tlbiel_va (unsigned long,unsigned long,int,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;

void radix__local_flush_tlb_page_psize(struct mm_struct *mm, unsigned long vmaddr,
           int psize)
{
 unsigned long pid;

 preempt_disable();
 pid = mm->context.id;
 if (pid != MMU_NO_CONTEXT)
  _tlbiel_va(vmaddr, pid, psize, RIC_FLUSH_TLB);
 preempt_enable();
}
