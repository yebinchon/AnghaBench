
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv_synic {int sint; } ;


 int ARRAY_SIZE (int ) ;
 int synic_get_sint_vector (int ) ;
 int synic_read_sint (struct kvm_vcpu_hv_synic*,int) ;

__attribute__((used)) static bool synic_has_vector_connected(struct kvm_vcpu_hv_synic *synic,
          int vector)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(synic->sint); i++) {
  if (synic_get_sint_vector(synic_read_sint(synic, i)) == vector)
   return 1;
 }
 return 0;
}
