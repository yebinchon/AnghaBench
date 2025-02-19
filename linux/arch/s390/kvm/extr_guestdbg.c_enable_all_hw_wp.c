
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int nr_hw_wp; TYPE_2__* hw_wp_info; } ;
struct TYPE_8__ {TYPE_3__ guestdbg; TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_6__ {unsigned long addr; unsigned long len; } ;
struct TYPE_5__ {int* gcr; } ;


 int PER_CONTROL_ALTERATION ;
 int PER_EVENT_STORE ;
 int extend_address_range (int*,int*,unsigned long,unsigned long) ;

__attribute__((used)) static void enable_all_hw_wp(struct kvm_vcpu *vcpu)
{
 unsigned long start, len;
 u64 *cr9 = &vcpu->arch.sie_block->gcr[9];
 u64 *cr10 = &vcpu->arch.sie_block->gcr[10];
 u64 *cr11 = &vcpu->arch.sie_block->gcr[11];
 int i;

 if (vcpu->arch.guestdbg.nr_hw_wp <= 0 ||
     vcpu->arch.guestdbg.hw_wp_info == ((void*)0))
  return;



 if (*cr9 & PER_EVENT_STORE && *cr9 & PER_CONTROL_ALTERATION) {
  *cr9 &= ~PER_CONTROL_ALTERATION;
  *cr10 = 0;
  *cr11 = -1UL;
 } else {
  *cr9 &= ~PER_CONTROL_ALTERATION;
  *cr9 |= PER_EVENT_STORE;

  for (i = 0; i < vcpu->arch.guestdbg.nr_hw_wp; i++) {
   start = vcpu->arch.guestdbg.hw_wp_info[i].addr;
   len = vcpu->arch.guestdbg.hw_wp_info[i].len;

   extend_address_range(cr10, cr11, start, len);
  }
 }
}
