
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef long u64 ;
typedef int u32 ;
struct TYPE_10__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_5__ arch; } ;
struct TYPE_9__ {int ipb; } ;
struct TYPE_6__ {long* gprs; } ;
struct TYPE_7__ {TYPE_1__ regs; } ;
struct TYPE_8__ {TYPE_2__ s; } ;



__attribute__((used)) static inline u64 kvm_s390_get_base_disp_rsy(struct kvm_vcpu *vcpu, u8 *ar)
{
 u32 base2 = vcpu->arch.sie_block->ipb >> 28;
 u32 disp2 = ((vcpu->arch.sie_block->ipb & 0x0fff0000) >> 16) +
   ((vcpu->arch.sie_block->ipb & 0xff00) << 4);

 if (disp2 & 0x80000)
  disp2+=0xfff00000;

 if (ar)
  *ar = base2;

 return (base2 ? vcpu->run->s.regs.gprs[base2] : 0) + (long)(int)disp2;
}
