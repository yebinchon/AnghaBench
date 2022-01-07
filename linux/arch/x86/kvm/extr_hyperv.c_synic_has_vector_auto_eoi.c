
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu_hv_synic {int sint; } ;


 int ARRAY_SIZE (int ) ;
 int HV_SYNIC_SINT_AUTO_EOI ;
 int synic_get_sint_vector (int) ;
 int synic_read_sint (struct kvm_vcpu_hv_synic*,int) ;

__attribute__((used)) static bool synic_has_vector_auto_eoi(struct kvm_vcpu_hv_synic *synic,
         int vector)
{
 int i;
 u64 sint_value;

 for (i = 0; i < ARRAY_SIZE(synic->sint); i++) {
  sint_value = synic_read_sint(synic, i);
  if (synic_get_sint_vector(sint_value) == vector &&
      sint_value & HV_SYNIC_SINT_AUTO_EOI)
   return 1;
 }
 return 0;
}
