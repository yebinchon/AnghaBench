
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int buf ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int srcu; } ;


 int BUG () ;
 int H_SUCCESS ;
 int H_TOO_HARD ;
 int KVM_MMIO_BUS ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int is_power_of_2 (unsigned long) ;
 int kvm_io_bus_read (struct kvm_vcpu*,int ,unsigned long,unsigned long,int *) ;
 unsigned long kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int kvmppc_h_logical_ci_load(struct kvm_vcpu *vcpu)
{
 unsigned long size = kvmppc_get_gpr(vcpu, 4);
 unsigned long addr = kvmppc_get_gpr(vcpu, 5);
 u64 buf;
 int srcu_idx;
 int ret;

 if (!is_power_of_2(size) || (size > sizeof(buf)))
  return H_TOO_HARD;

 srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
 ret = kvm_io_bus_read(vcpu, KVM_MMIO_BUS, addr, size, &buf);
 srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
 if (ret != 0)
  return H_TOO_HARD;

 switch (size) {
 case 1:
  kvmppc_set_gpr(vcpu, 4, *(u8 *)&buf);
  break;

 case 2:
  kvmppc_set_gpr(vcpu, 4, be16_to_cpu(*(__be16 *)&buf));
  break;

 case 4:
  kvmppc_set_gpr(vcpu, 4, be32_to_cpu(*(__be32 *)&buf));
  break;

 case 8:
  kvmppc_set_gpr(vcpu, 4, be64_to_cpu(*(__be64 *)&buf));
  break;

 default:
  BUG();
 }

 return H_SUCCESS;
}
