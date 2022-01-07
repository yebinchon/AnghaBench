
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu_hv_synic {int * sint; } ;


 int HV_SYNIC_FIRST_VALID_VECTOR ;
 int HV_SYNIC_SINT_MASKED ;
 int HV_SYNIC_SINT_VECTOR_MASK ;
 int KVM_REQ_SCAN_IOAPIC ;
 int atomic64_set (int *,int) ;
 int kvm_make_request (int ,int ) ;
 int synic_read_sint (struct kvm_vcpu_hv_synic*,int) ;
 int synic_to_vcpu (struct kvm_vcpu_hv_synic*) ;
 int synic_update_vector (struct kvm_vcpu_hv_synic*,int) ;

__attribute__((used)) static int synic_set_sint(struct kvm_vcpu_hv_synic *synic, int sint,
     u64 data, bool host)
{
 int vector, old_vector;
 bool masked;

 vector = data & HV_SYNIC_SINT_VECTOR_MASK;
 masked = data & HV_SYNIC_SINT_MASKED;






 if (vector < HV_SYNIC_FIRST_VALID_VECTOR && !host && !masked)
  return 1;






 old_vector = synic_read_sint(synic, sint) & HV_SYNIC_SINT_VECTOR_MASK;

 atomic64_set(&synic->sint[sint], data);

 synic_update_vector(synic, old_vector);

 synic_update_vector(synic, vector);


 kvm_make_request(KVM_REQ_SCAN_IOAPIC, synic_to_vcpu(synic));
 return 0;
}
