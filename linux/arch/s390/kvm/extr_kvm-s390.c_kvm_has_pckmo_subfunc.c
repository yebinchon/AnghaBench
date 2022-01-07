
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pckmo; } ;
struct TYPE_6__ {TYPE_1__ subfuncs; } ;
struct TYPE_7__ {TYPE_2__ model; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_8__ {int pckmo; } ;


 TYPE_4__ kvm_s390_available_subfunc ;
 scalar_t__ test_bit_inv (unsigned long,unsigned long*) ;

__attribute__((used)) static bool kvm_has_pckmo_subfunc(struct kvm *kvm, unsigned long nr)
{
 if (test_bit_inv(nr, (unsigned long *)&kvm->arch.model.subfuncs.pckmo) &&
     test_bit_inv(nr, (unsigned long *)&kvm_s390_available_subfunc.pckmo))
  return 1;
 return 0;
}
