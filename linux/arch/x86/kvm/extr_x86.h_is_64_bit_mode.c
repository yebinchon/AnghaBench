
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_cs_db_l_bits ) (struct kvm_vcpu*,int*,int*) ;} ;


 int is_long_mode (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int*,int*) ;

__attribute__((used)) static inline bool is_64_bit_mode(struct kvm_vcpu *vcpu)
{
 int cs_db, cs_l;

 if (!is_long_mode(vcpu))
  return 0;
 kvm_x86_ops->get_cs_db_l_bits(vcpu, &cs_db, &cs_l);
 return cs_l;
}
