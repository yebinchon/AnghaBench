
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {struct mmuext_op* args; TYPE_1__* mc; } ;
struct mmuext_op {int dummy; } ;
struct TYPE_2__ {int * args; } ;


 int DOMID_SELF ;
 int MULTI_mmuext_op (TYPE_1__*,struct mmuext_op*,int,int *,int ) ;
 int __HYPERVISOR_mmuext_op ;
 struct multicall_space __xen_mc_entry (int) ;
 struct multicall_space xen_mc_extend_args (int ,int) ;

__attribute__((used)) static void xen_extend_mmuext_op(const struct mmuext_op *op)
{
 struct multicall_space mcs;
 struct mmuext_op *u;

 mcs = xen_mc_extend_args(__HYPERVISOR_mmuext_op, sizeof(*u));

 if (mcs.mc != ((void*)0)) {
  mcs.mc->args[1]++;
 } else {
  mcs = __xen_mc_entry(sizeof(*u));
  MULTI_mmuext_op(mcs.mc, mcs.args, 1, ((void*)0), DOMID_SELF);
 }

 u = mcs.args;
 *u = *op;
}
