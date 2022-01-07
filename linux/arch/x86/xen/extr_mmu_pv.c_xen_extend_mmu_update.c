
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {struct mmu_update* args; TYPE_1__* mc; } ;
struct mmu_update {int dummy; } ;
struct TYPE_2__ {int * args; } ;


 int DOMID_SELF ;
 int MULTI_mmu_update (TYPE_1__*,struct mmu_update*,int,int *,int ) ;
 int __HYPERVISOR_mmu_update ;
 struct multicall_space __xen_mc_entry (int) ;
 struct multicall_space xen_mc_extend_args (int ,int) ;

__attribute__((used)) static void xen_extend_mmu_update(const struct mmu_update *update)
{
 struct multicall_space mcs;
 struct mmu_update *u;

 mcs = xen_mc_extend_args(__HYPERVISOR_mmu_update, sizeof(*u));

 if (mcs.mc != ((void*)0)) {
  mcs.mc->args[1]++;
 } else {
  mcs = __xen_mc_entry(sizeof(*u));
  MULTI_mmu_update(mcs.mc, mcs.args, 1, ((void*)0), DOMID_SELF);
 }

 u = mcs.args;
 *u = *update;
}
