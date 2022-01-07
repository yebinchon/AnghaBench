
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {scalar_t__ mmio_read_completed; TYPE_1__* mmio_fragments; } ;
struct TYPE_2__ {int gpa; } ;


 int KVM_TRACE_MMIO_READ ;
 int trace_kvm_mmio (int ,int,int ,void*) ;

__attribute__((used)) static int read_prepare(struct kvm_vcpu *vcpu, void *val, int bytes)
{
 if (vcpu->mmio_read_completed) {
  trace_kvm_mmio(KVM_TRACE_MMIO_READ, bytes,
          vcpu->mmio_fragments[0].gpa, val);
  vcpu->mmio_read_completed = 0;
  return 1;
 }

 return 0;
}
