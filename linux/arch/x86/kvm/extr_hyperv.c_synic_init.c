
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv_synic {int * sint_to_gsi; int * sint; int version; } ;


 int ARRAY_SIZE (int *) ;
 int HV_SYNIC_SINT_MASKED ;
 int HV_SYNIC_VERSION_1 ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int) ;
 int memset (struct kvm_vcpu_hv_synic*,int ,int) ;

__attribute__((used)) static void synic_init(struct kvm_vcpu_hv_synic *synic)
{
 int i;

 memset(synic, 0, sizeof(*synic));
 synic->version = HV_SYNIC_VERSION_1;
 for (i = 0; i < ARRAY_SIZE(synic->sint); i++) {
  atomic64_set(&synic->sint[i], HV_SYNIC_SINT_MASKED);
  atomic_set(&synic->sint_to_gsi[i], -1);
 }
}
