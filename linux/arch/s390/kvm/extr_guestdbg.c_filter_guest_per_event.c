
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {int perc; int* gcr; int iprcc; TYPE_1__ gpsw; } ;


 int PER_CODE_BRANCH ;
 int PER_CODE_IFETCH ;
 int const PER_CODE_MASK ;
 int PER_CONTROL_BRANCH_ADDRESS ;
 int PGM_PER ;
 int guest_per_enabled (struct kvm_vcpu*) ;
 int in_addr_range (unsigned long,int,int) ;
 int per_fetched_addr (struct kvm_vcpu*,unsigned long*) ;

__attribute__((used)) static int filter_guest_per_event(struct kvm_vcpu *vcpu)
{
 const u8 perc = vcpu->arch.sie_block->perc;
 u64 addr = vcpu->arch.sie_block->gpsw.addr;
 u64 cr9 = vcpu->arch.sie_block->gcr[9];
 u64 cr10 = vcpu->arch.sie_block->gcr[10];
 u64 cr11 = vcpu->arch.sie_block->gcr[11];

 u8 guest_perc = perc & (cr9 >> 24) & PER_CODE_MASK;
 unsigned long fetched_addr;
 int rc;

 if (!guest_per_enabled(vcpu))
  guest_perc = 0;


 if (guest_perc & PER_CODE_BRANCH &&
     cr9 & PER_CONTROL_BRANCH_ADDRESS &&
     !in_addr_range(addr, cr10, cr11))
  guest_perc &= ~PER_CODE_BRANCH;


 if (guest_perc & PER_CODE_IFETCH) {
  rc = per_fetched_addr(vcpu, &fetched_addr);
  if (rc < 0)
   return rc;




  if (rc || !in_addr_range(fetched_addr, cr10, cr11))
   guest_perc &= ~PER_CODE_IFETCH;
 }




 vcpu->arch.sie_block->perc = guest_perc;

 if (!guest_perc)
  vcpu->arch.sie_block->iprcc &= ~PGM_PER;
 return 0;
}
