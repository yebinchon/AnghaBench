
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbiel_va {scalar_t__ ric; int psize; int pid; int va; } ;


 scalar_t__ RIC_FLUSH_ALL ;
 scalar_t__ RIC_FLUSH_PWC ;
 scalar_t__ RIC_FLUSH_TLB ;
 int _tlbiel_va (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void do_tlbiel_va(void *info)
{
 struct tlbiel_va *t = info;

 if (t->ric == RIC_FLUSH_TLB)
  _tlbiel_va(t->va, t->pid, t->psize, RIC_FLUSH_TLB);
 else if (t->ric == RIC_FLUSH_PWC)
  _tlbiel_va(t->va, t->pid, t->psize, RIC_FLUSH_PWC);
 else
  _tlbiel_va(t->va, t->pid, t->psize, RIC_FLUSH_ALL);
}
