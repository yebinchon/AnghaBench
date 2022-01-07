
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int swap ;
struct kvm_swap {scalar_t__ ksw_used; scalar_t__ ksw_total; } ;
struct TYPE_5__ {int memActive; int memWire; int kd; } ;
struct TYPE_4__ {int totalMem; int buffersMem; int cachedMem; int usedMem; int totalSwap; int usedSwap; scalar_t__ sharedMem; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ DragonFlyBSDProcessList ;


 int MIB_hw_physmem ;
 int MIB_vfs_bufspace ;
 int MIB_vm_stats_vm_v_active_count ;
 int MIB_vm_stats_vm_v_cache_count ;
 int MIB_vm_stats_vm_v_wire_count ;
 int kvm_getswapinfo (int ,struct kvm_swap*,int,int ) ;
 int pageSizeKb ;
 int sysctl (int ,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static inline void DragonFlyBSDProcessList_scanMemoryInfo(ProcessList* pl) {
   DragonFlyBSDProcessList* dfpl = (DragonFlyBSDProcessList*) pl;







   size_t len = sizeof(pl->totalMem);





   sysctl(MIB_hw_physmem, 2, &(pl->totalMem), &len, ((void*)0), 0);
   pl->totalMem /= 1024;

   sysctl(MIB_vm_stats_vm_v_active_count, 4, &(dfpl->memActive), &len, ((void*)0), 0);
   dfpl->memActive *= pageSizeKb;

   sysctl(MIB_vm_stats_vm_v_wire_count, 4, &(dfpl->memWire), &len, ((void*)0), 0);
   dfpl->memWire *= pageSizeKb;

   sysctl(MIB_vfs_bufspace, 2, &(pl->buffersMem), &len, ((void*)0), 0);
   pl->buffersMem /= 1024;

   sysctl(MIB_vm_stats_vm_v_cache_count, 4, &(pl->cachedMem), &len, ((void*)0), 0);
   pl->cachedMem *= pageSizeKb;
   pl->usedMem = dfpl->memActive + dfpl->memWire;







   struct kvm_swap swap[16];
   int nswap = kvm_getswapinfo(dfpl->kd, swap, sizeof(swap)/sizeof(swap[0]), 0);
   pl->totalSwap = 0;
   pl->usedSwap = 0;
   for (int i = 0; i < nswap; i++) {
      pl->totalSwap += swap[i].ksw_total;
      pl->usedSwap += swap[i].ksw_used;
   }
   pl->totalSwap *= pageSizeKb;
   pl->usedSwap *= pageSizeKb;

   pl->sharedMem = 0;
}
