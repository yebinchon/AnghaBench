
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int nr; int * msrs; } ;


 int BUG_ON (int) ;
 unsigned int KVM_NR_SHARED_MSRS ;
 TYPE_1__ shared_msrs_global ;

void kvm_define_shared_msr(unsigned slot, u32 msr)
{
 BUG_ON(slot >= KVM_NR_SHARED_MSRS);
 shared_msrs_global.msrs[slot] = msr;
 if (slot >= shared_msrs_global.nr)
  shared_msrs_global.nr = slot + 1;
}
