
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; int vcpu_id; } ;
struct TYPE_4__ {scalar_t__** stat; } ;


 int N_MIPS_COPROC_REGS ;
 int N_MIPS_COPROC_SEL ;
 int * kvm_cop0_str ;
 int kvm_info (char*,int ,...) ;

void kvm_mips_dump_stats(struct kvm_vcpu *vcpu)
{
}
