
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {int * args; TYPE_1__* mc; int * member_1; int * member_0; } ;
struct mc_buffer {size_t argidx; int mcidx; int * args; TYPE_1__* entries; } ;
struct TYPE_2__ {unsigned long op; } ;


 int BUG_ON (int) ;
 size_t MC_ARGS ;
 int XEN_MC_XE_BAD_OP ;
 int XEN_MC_XE_NO_SPACE ;
 int XEN_MC_XE_OK ;
 int mc_buffer ;
 int preemptible () ;
 struct mc_buffer* this_cpu_ptr (int *) ;
 int trace_xen_mc_extend_args (unsigned long,size_t,int ) ;
 scalar_t__ unlikely (int) ;

struct multicall_space xen_mc_extend_args(unsigned long op, size_t size)
{
 struct mc_buffer *b = this_cpu_ptr(&mc_buffer);
 struct multicall_space ret = { ((void*)0), ((void*)0) };

 BUG_ON(preemptible());
 BUG_ON(b->argidx >= MC_ARGS);

 if (unlikely(b->mcidx == 0 ||
       b->entries[b->mcidx - 1].op != op)) {
  trace_xen_mc_extend_args(op, size, XEN_MC_XE_BAD_OP);
  goto out;
 }

 if (unlikely((b->argidx + size) >= MC_ARGS)) {
  trace_xen_mc_extend_args(op, size, XEN_MC_XE_NO_SPACE);
  goto out;
 }

 ret.mc = &b->entries[b->mcidx - 1];
 ret.args = &b->args[b->argidx];
 b->argidx += size;

 BUG_ON(b->argidx >= MC_ARGS);

 trace_xen_mc_extend_args(op, size, XEN_MC_XE_OK);
out:
 return ret;
}
