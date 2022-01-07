
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nested_enable; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ kvm_is_radix (struct kvm*) ;

__attribute__((used)) static inline bool nesting_enabled(struct kvm *kvm)
{
 return kvm->arch.nested_enable && kvm_is_radix(kvm);
}
