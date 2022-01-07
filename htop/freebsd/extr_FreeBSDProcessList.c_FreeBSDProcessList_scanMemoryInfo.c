
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int swap ;
struct kvm_swap {scalar_t__ ksw_used; scalar_t__ ksw_total; } ;
struct TYPE_5__ {int memActive; int memWire; int memZfsArc; int kd; scalar_t__ zfsArcEnabled; } ;
struct TYPE_4__ {int totalMem; int buffersMem; int cachedMem; int usedMem; int totalSwap; int usedSwap; scalar_t__ sharedMem; } ;
typedef TYPE_1__ ProcessList ;
typedef TYPE_2__ FreeBSDProcessList ;


 int MIB_hw_physmem ;
 int MIB_kstat_zfs_misc_arcstats_size ;
 int MIB_vfs_bufspace ;
 int MIB_vm_stats_vm_v_active_count ;
 int MIB_vm_stats_vm_v_cache_count ;
 int MIB_vm_stats_vm_v_wire_count ;
 int kvm_getswapinfo (int ,struct kvm_swap*,int,int ) ;
 int pageSizeKb ;
 int sysctl (int ,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static inline void FreeBSDProcessList_scanMemoryInfo(ProcessList* pl) {
   FreeBSDProcessList* fpl = (FreeBSDProcessList*) pl;
   size_t len = sizeof(pl->totalMem);





   sysctl(MIB_hw_physmem, 2, &(pl->totalMem), &len, ((void*)0), 0);
   pl->totalMem /= 1024;

   sysctl(MIB_vm_stats_vm_v_active_count, 4, &(fpl->memActive), &len, ((void*)0), 0);
   fpl->memActive *= pageSizeKb;

   sysctl(MIB_vm_stats_vm_v_wire_count, 4, &(fpl->memWire), &len, ((void*)0), 0);
   fpl->memWire *= pageSizeKb;

   sysctl(MIB_vfs_bufspace, 2, &(pl->buffersMem), &len, ((void*)0), 0);
   pl->buffersMem /= 1024;

   sysctl(MIB_vm_stats_vm_v_cache_count, 4, &(pl->cachedMem), &len, ((void*)0), 0);
   pl->cachedMem *= pageSizeKb;

   if (fpl->zfsArcEnabled) {
      len = sizeof(fpl->memZfsArc);
      sysctl(MIB_kstat_zfs_misc_arcstats_size, 5, &(fpl->memZfsArc), &len , ((void*)0), 0);
      fpl->memZfsArc /= 1024;
      fpl->memWire -= fpl->memZfsArc;
      pl->cachedMem += fpl->memZfsArc;


   }

   pl->usedMem = fpl->memActive + fpl->memWire;







   struct kvm_swap swap[16];
   int nswap = kvm_getswapinfo(fpl->kd, swap, sizeof(swap)/sizeof(swap[0]), 0);
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
