
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv_synic {int sint; } ;
struct kvm_vcpu {int vcpu_id; } ;


 int ARRAY_SIZE (int ) ;
 int kvm_hv_notify_acked_sint (struct kvm_vcpu*,int) ;
 int synic_get_sint_vector (int ) ;
 int synic_read_sint (struct kvm_vcpu_hv_synic*,int) ;
 int trace_kvm_hv_synic_send_eoi (int ,int) ;
 struct kvm_vcpu_hv_synic* vcpu_to_synic (struct kvm_vcpu*) ;

void kvm_hv_synic_send_eoi(struct kvm_vcpu *vcpu, int vector)
{
 struct kvm_vcpu_hv_synic *synic = vcpu_to_synic(vcpu);
 int i;

 trace_kvm_hv_synic_send_eoi(vcpu->vcpu_id, vector);

 for (i = 0; i < ARRAY_SIZE(synic->sint); i++)
  if (synic_get_sint_vector(synic_read_sint(synic, i)) == vector)
   kvm_hv_notify_acked_sint(vcpu, i);
}
