
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int vcpu_id; } ;


 int MPIDR_EL1 ;
 int MPIDR_LEVEL_SHIFT (int) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,unsigned long long,int ) ;

__attribute__((used)) static void reset_mpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
{
 u64 mpidr;
 mpidr = (vcpu->vcpu_id & 0x0f) << MPIDR_LEVEL_SHIFT(0);
 mpidr |= ((vcpu->vcpu_id >> 4) & 0xff) << MPIDR_LEVEL_SHIFT(1);
 mpidr |= ((vcpu->vcpu_id >> 12) & 0xff) << MPIDR_LEVEL_SHIFT(2);
 vcpu_write_sys_reg(vcpu, (1ULL << 31) | mpidr, MPIDR_EL1);
}
