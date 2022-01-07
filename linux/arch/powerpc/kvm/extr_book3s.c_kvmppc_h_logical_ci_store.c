
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
typedef int u64 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int srcu; } ;


 int H_SUCCESS ;
 int H_TOO_HARD ;
 int KVM_MMIO_BUS ;
 int cpu_to_be16 (unsigned long) ;
 int cpu_to_be32 (unsigned long) ;
 int cpu_to_be64 (unsigned long) ;
 int kvm_io_bus_write (struct kvm_vcpu*,int ,unsigned long,unsigned long,int *) ;
 unsigned long kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int kvmppc_h_logical_ci_store(struct kvm_vcpu *vcpu)
{
 unsigned long size = kvmppc_get_gpr(vcpu, 4);
 unsigned long addr = kvmppc_get_gpr(vcpu, 5);
 unsigned long val = kvmppc_get_gpr(vcpu, 6);
 u64 buf;
 int srcu_idx;
 int ret;

 switch (size) {
 case 1:
  *(u8 *)&buf = val;
  break;

 case 2:
  *(__be16 *)&buf = cpu_to_be16(val);
  break;

 case 4:
  *(__be32 *)&buf = cpu_to_be32(val);
  break;

 case 8:
  *(__be64 *)&buf = cpu_to_be64(val);
  break;

 default:
  return H_TOO_HARD;
 }

 srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
 ret = kvm_io_bus_write(vcpu, KVM_MMIO_BUS, addr, size, &buf);
 srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
 if (ret != 0)
  return H_TOO_HARD;

 return H_SUCCESS;
}
