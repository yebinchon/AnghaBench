
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {unsigned long count_hz; scalar_t__ count_dyn_bias; int count_period; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ NSEC_PER_SEC ;
 int div_u64 (int,unsigned long) ;
 int kvm_mips_write_count (struct kvm_vcpu*,int ) ;

void kvm_mips_init_count(struct kvm_vcpu *vcpu, unsigned long count_hz)
{
 vcpu->arch.count_hz = count_hz;
 vcpu->arch.count_period = div_u64((u64)NSEC_PER_SEC << 32, count_hz);
 vcpu->arch.count_dyn_bias = 0;


 kvm_mips_write_count(vcpu, 0);
}
