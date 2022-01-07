
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int base; } ;


 int VCPU_SREG_CS ;
 int kvm_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 int kvm_set_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

void kvm_vcpu_deliver_sipi_vector(struct kvm_vcpu *vcpu, u8 vector)
{
 struct kvm_segment cs;

 kvm_get_segment(vcpu, &cs, VCPU_SREG_CS);
 cs.selector = vector << 8;
 cs.base = vector << 12;
 kvm_set_segment(vcpu, &cs, VCPU_SREG_CS);
 kvm_rip_write(vcpu, 0);
}
