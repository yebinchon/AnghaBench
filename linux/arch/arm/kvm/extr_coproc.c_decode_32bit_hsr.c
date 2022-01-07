
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_params {int CRm; int Rt1; int is_write; int is_64bit; int CRn; int Op1; int Op2; scalar_t__ Rt2; } ;


 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;

__attribute__((used)) static struct coproc_params decode_32bit_hsr(struct kvm_vcpu *vcpu)
{
 struct coproc_params params;

 params.CRm = (kvm_vcpu_get_hsr(vcpu) >> 1) & 0xf;
 params.Rt1 = (kvm_vcpu_get_hsr(vcpu) >> 5) & 0xf;
 params.is_write = ((kvm_vcpu_get_hsr(vcpu) & 1) == 0);
 params.is_64bit = 0;

 params.CRn = (kvm_vcpu_get_hsr(vcpu) >> 10) & 0xf;
 params.Op1 = (kvm_vcpu_get_hsr(vcpu) >> 14) & 0x7;
 params.Op2 = (kvm_vcpu_get_hsr(vcpu) >> 17) & 0x7;
 params.Rt2 = 0;

 return params;
}
