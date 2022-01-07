
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int VCPU_SREG_CS ;
 int to_vmx (struct kvm_vcpu*) ;
 int vmx_read_guest_seg_ar (int ,int ) ;

__attribute__((used)) static void vmx_get_cs_db_l_bits(struct kvm_vcpu *vcpu, int *db, int *l)
{
 u32 ar = vmx_read_guest_seg_ar(to_vmx(vcpu), VCPU_SREG_CS);

 *db = (ar >> 14) & 1;
 *l = (ar >> 13) & 1;
}
