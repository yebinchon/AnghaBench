
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu_hv_synic {int sint; } ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; int kvm; } ;
struct kvm_lapic_irq {int vector; int level; int delivery_mode; int dest_mode; int shorthand; } ;
typedef int irq ;


 int APIC_DEST_PHYSICAL ;
 int APIC_DEST_SELF ;
 int APIC_DM_FIXED ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOENT ;
 int kvm_irq_delivery_to_apic (int ,int ,struct kvm_lapic_irq*,int *) ;
 int memset (struct kvm_lapic_irq*,int ,int) ;
 int synic_get_sint_vector (int ) ;
 int synic_read_sint (struct kvm_vcpu_hv_synic*,int ) ;
 struct kvm_vcpu* synic_to_vcpu (struct kvm_vcpu_hv_synic*) ;
 int trace_kvm_hv_synic_set_irq (int ,int ,int,int) ;

__attribute__((used)) static int synic_set_irq(struct kvm_vcpu_hv_synic *synic, u32 sint)
{
 struct kvm_vcpu *vcpu = synic_to_vcpu(synic);
 struct kvm_lapic_irq irq;
 int ret, vector;

 if (sint >= ARRAY_SIZE(synic->sint))
  return -EINVAL;

 vector = synic_get_sint_vector(synic_read_sint(synic, sint));
 if (vector < 0)
  return -ENOENT;

 memset(&irq, 0, sizeof(irq));
 irq.shorthand = APIC_DEST_SELF;
 irq.dest_mode = APIC_DEST_PHYSICAL;
 irq.delivery_mode = APIC_DM_FIXED;
 irq.vector = vector;
 irq.level = 1;

 ret = kvm_irq_delivery_to_apic(vcpu->kvm, vcpu->arch.apic, &irq, ((void*)0));
 trace_kvm_hv_synic_set_irq(vcpu->vcpu_id, sint, irq.vector, ret);
 return ret;
}
