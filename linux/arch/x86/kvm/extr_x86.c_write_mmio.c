
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int KVM_TRACE_MMIO_WRITE ;
 int trace_kvm_mmio (int ,int,int ,void*) ;
 int vcpu_mmio_write (struct kvm_vcpu*,int ,int,void*) ;

__attribute__((used)) static int write_mmio(struct kvm_vcpu *vcpu, gpa_t gpa, int bytes, void *val)
{
 trace_kvm_mmio(KVM_TRACE_MMIO_WRITE, bytes, gpa, val);
 return vcpu_mmio_write(vcpu, gpa, bytes, val);
}
