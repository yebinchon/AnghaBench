
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cstate_in_guest; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline bool kvm_cstate_in_guest(struct kvm *kvm)
{
 return kvm->arch.cstate_in_guest;
}
