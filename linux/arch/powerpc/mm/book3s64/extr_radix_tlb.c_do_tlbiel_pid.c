
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbiel_pid {scalar_t__ ric; int pid; } ;


 scalar_t__ RIC_FLUSH_ALL ;
 scalar_t__ RIC_FLUSH_PWC ;
 scalar_t__ RIC_FLUSH_TLB ;
 int _tlbiel_pid (int ,scalar_t__) ;

__attribute__((used)) static void do_tlbiel_pid(void *info)
{
 struct tlbiel_pid *t = info;

 if (t->ric == RIC_FLUSH_TLB)
  _tlbiel_pid(t->pid, RIC_FLUSH_TLB);
 else if (t->ric == RIC_FLUSH_PWC)
  _tlbiel_pid(t->pid, RIC_FLUSH_PWC);
 else
  _tlbiel_pid(t->pid, RIC_FLUSH_ALL);
}
