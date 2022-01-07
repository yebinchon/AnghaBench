
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_entry {scalar_t__ result; int * args; int op; } ;
struct mc_buffer {int mcidx; scalar_t__ argidx; int cbidx; struct callback* callbacks; struct multicall_entry* entries; int * caller; TYPE_1__* debug; } ;
struct callback {int data; int (* fn ) (int ) ;} ;
struct TYPE_2__ {int * args; int op; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int HYPERVISOR_multicall (struct multicall_entry*,int) ;
 scalar_t__ WARN_ON (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mc_buffer ;
 int memcpy (TYPE_1__*,struct multicall_entry*,int) ;
 int pr_err (char*,int,int,int ,...) ;
 int preemptible () ;
 int smp_processor_id () ;
 int stub1 (int ) ;
 struct mc_buffer* this_cpu_ptr (int *) ;
 int trace_xen_mc_flush (int,scalar_t__,int) ;
 scalar_t__ xen_single_call (int ,int ,int ,int ,int ,int ) ;

void xen_mc_flush(void)
{
 struct mc_buffer *b = this_cpu_ptr(&mc_buffer);
 struct multicall_entry *mc;
 int ret = 0;
 unsigned long flags;
 int i;

 BUG_ON(preemptible());



 local_irq_save(flags);

 trace_xen_mc_flush(b->mcidx, b->argidx, b->cbidx);






 switch (b->mcidx) {
 case 0:

  BUG_ON(b->argidx != 0);
  break;

 case 1:


  mc = &b->entries[0];

  mc->result = xen_single_call(mc->op, mc->args[0], mc->args[1],
          mc->args[2], mc->args[3],
          mc->args[4]);
  ret = mc->result < 0;
  break;

 default:
  if (HYPERVISOR_multicall(b->entries, b->mcidx) != 0)
   BUG();
  for (i = 0; i < b->mcidx; i++)
   if (b->entries[i].result < 0)
    ret++;
 }

 if (WARN_ON(ret)) {
  pr_err("%d of %d multicall(s) failed: cpu %d\n",
         ret, b->mcidx, smp_processor_id());
  for (i = 0; i < b->mcidx; i++) {
   if (b->entries[i].result < 0) {
    pr_err("  call %2d: op=%lu arg=[%lx] result=%ld\n",
           i + 1,
           b->entries[i].op,
           b->entries[i].args[0],
           b->entries[i].result);

   }
  }
 }

 b->mcidx = 0;
 b->argidx = 0;

 for (i = 0; i < b->cbidx; i++) {
  struct callback *cb = &b->callbacks[i];

  (*cb->fn)(cb->data);
 }
 b->cbidx = 0;

 local_irq_restore(flags);
}
