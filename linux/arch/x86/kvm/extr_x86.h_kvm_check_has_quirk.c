
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int disabled_quirks; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline bool kvm_check_has_quirk(struct kvm *kvm, u64 quirk)
{
 return !(kvm->arch.disabled_quirks & quirk);
}
