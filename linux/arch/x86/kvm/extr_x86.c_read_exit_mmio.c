
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int KVM_TRACE_MMIO_READ_UNSATISFIED ;
 int X86EMUL_IO_NEEDED ;
 int trace_kvm_mmio (int ,int,int ,int *) ;

__attribute__((used)) static int read_exit_mmio(struct kvm_vcpu *vcpu, gpa_t gpa,
     void *val, int bytes)
{
 trace_kvm_mmio(KVM_TRACE_MMIO_READ_UNSATISFIED, bytes, gpa, ((void*)0));
 return X86EMUL_IO_NEEDED;
}
