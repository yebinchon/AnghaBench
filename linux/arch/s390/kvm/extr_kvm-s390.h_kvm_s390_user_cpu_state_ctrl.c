
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_cpu_state_ctrl; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline int kvm_s390_user_cpu_state_ctrl(struct kvm *kvm)
{
 return kvm->arch.user_cpu_state_ctrl != 0;
}
