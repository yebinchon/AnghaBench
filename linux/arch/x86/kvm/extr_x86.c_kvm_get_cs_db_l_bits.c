
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int db; int l; } ;


 int VCPU_SREG_CS ;
 int kvm_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

void kvm_get_cs_db_l_bits(struct kvm_vcpu *vcpu, int *db, int *l)
{
 struct kvm_segment cs;

 kvm_get_segment(vcpu, &cs, VCPU_SREG_CS);
 *db = cs.db;
 *l = cs.l;
}
