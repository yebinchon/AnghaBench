
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ipte_control {int dummy; } ipte_control ;
struct TYPE_2__ {struct bsca_block* sca; } ;
struct kvm {TYPE_1__ arch; } ;
struct bsca_block {union ipte_control ipte_control; } ;



__attribute__((used)) static inline union ipte_control *kvm_s390_get_ipte_control(struct kvm *kvm)
{
 struct bsca_block *sca = kvm->arch.sca;

 return &sca->ipte_control;
}
