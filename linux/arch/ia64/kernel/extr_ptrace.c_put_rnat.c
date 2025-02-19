
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct switch_stack {unsigned long ar_rnat; scalar_t__ ar_bspstore; } ;
struct pt_regs {unsigned long cr_ifs; unsigned long ar_rnat; scalar_t__ ar_bspstore; } ;


 unsigned long MASK (long) ;
 long ia64_rse_num_regs (unsigned long*,unsigned long*) ;
 unsigned long* ia64_rse_rnat_addr (unsigned long*) ;
 unsigned long* ia64_rse_skip_regs (unsigned long*,long) ;
 long ia64_rse_slot_num (unsigned long*) ;
 scalar_t__ in_syscall (struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static void
put_rnat (struct task_struct *task, struct switch_stack *sw,
   unsigned long *krbs, unsigned long *urnat_addr, unsigned long urnat,
   unsigned long *urbs_end)
{
 unsigned long rnat0 = 0, rnat1 = 0, *slot0_kaddr, umask = 0, mask, m;
 unsigned long *kbsp, *ubspstore, *rnat0_kaddr, *rnat1_kaddr, shift;
 long num_regs, nbits;
 struct pt_regs *pt;
 unsigned long cfm, *urbs_kargs;

 pt = task_pt_regs(task);
 kbsp = (unsigned long *) sw->ar_bspstore;
 ubspstore = (unsigned long *) pt->ar_bspstore;

 urbs_kargs = urbs_end;
 if (in_syscall(pt)) {




  cfm = pt->cr_ifs;
  urbs_kargs = ia64_rse_skip_regs(urbs_end, -(cfm & 0x7f));
 }

 if (urbs_kargs >= urnat_addr)
  nbits = 63;
 else {
  if ((urnat_addr - 63) >= urbs_kargs)
   return;
  nbits = ia64_rse_num_regs(urnat_addr - 63, urbs_kargs);
 }
 mask = MASK(nbits);







 num_regs = ia64_rse_num_regs(ubspstore, urnat_addr + 1);
 slot0_kaddr = ia64_rse_skip_regs(krbs, num_regs);
 shift = ia64_rse_slot_num(slot0_kaddr);
 rnat1_kaddr = ia64_rse_rnat_addr(slot0_kaddr);
 rnat0_kaddr = rnat1_kaddr - 64;

 if (ubspstore + 63 > urnat_addr) {

  umask = MASK(ia64_rse_slot_num(ubspstore)) & mask;
  pt->ar_rnat = (pt->ar_rnat & ~umask) | (urnat & umask);
  mask &= ~umask;
  if (!mask)
   return;
 }




 rnat0 = (urnat << shift);
 m = mask << shift;
 if (rnat0_kaddr >= kbsp)
  sw->ar_rnat = (sw->ar_rnat & ~m) | (rnat0 & m);
 else if (rnat0_kaddr > krbs)
  *rnat0_kaddr = ((*rnat0_kaddr & ~m) | (rnat0 & m));

 rnat1 = (urnat >> (63 - shift));
 m = mask >> (63 - shift);
 if (rnat1_kaddr >= kbsp)
  sw->ar_rnat = (sw->ar_rnat & ~m) | (rnat1 & m);
 else if (rnat1_kaddr > krbs)
  *rnat1_kaddr = ((*rnat1_kaddr & ~m) | (rnat1 & m));
}
