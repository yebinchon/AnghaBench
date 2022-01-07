
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv_synic {int auto_eoi_bitmap; int vec_bitmap; } ;


 int HV_SYNIC_FIRST_VALID_VECTOR ;
 int __clear_bit (int,int ) ;
 int __set_bit (int,int ) ;
 scalar_t__ synic_has_vector_auto_eoi (struct kvm_vcpu_hv_synic*,int) ;
 scalar_t__ synic_has_vector_connected (struct kvm_vcpu_hv_synic*,int) ;

__attribute__((used)) static void synic_update_vector(struct kvm_vcpu_hv_synic *synic,
    int vector)
{
 if (vector < HV_SYNIC_FIRST_VALID_VECTOR)
  return;

 if (synic_has_vector_connected(synic, vector))
  __set_bit(vector, synic->vec_bitmap);
 else
  __clear_bit(vector, synic->vec_bitmap);

 if (synic_has_vector_auto_eoi(synic, vector))
  __set_bit(vector, synic->auto_eoi_bitmap);
 else
  __clear_bit(vector, synic->auto_eoi_bitmap);
}
