
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fac_list; int fac_mask; } ;
struct TYPE_4__ {TYPE_1__ model; } ;
struct kvm {TYPE_2__ arch; } ;


 scalar_t__ __test_facility (unsigned long,int ) ;

__attribute__((used)) static inline int test_kvm_facility(struct kvm *kvm, unsigned long nr)
{
 return __test_facility(nr, kvm->arch.model.fac_mask) &&
  __test_facility(nr, kvm->arch.model.fac_list);
}
