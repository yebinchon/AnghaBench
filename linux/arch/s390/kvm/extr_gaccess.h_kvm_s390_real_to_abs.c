
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int PAGE_SIZE ;
 unsigned long kvm_s390_get_prefix (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned long kvm_s390_real_to_abs(struct kvm_vcpu *vcpu,
       unsigned long gra)
{
 unsigned long prefix = kvm_s390_get_prefix(vcpu);

 if (gra < 2 * PAGE_SIZE)
  gra += prefix;
 else if (gra >= prefix && gra < prefix + 2 * PAGE_SIZE)
  gra -= prefix;
 return gra;
}
