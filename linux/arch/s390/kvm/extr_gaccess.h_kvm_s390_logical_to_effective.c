
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int psw_t ;
struct TYPE_6__ {scalar_t__ eaba; } ;
struct TYPE_4__ {int gpsw; } ;


 scalar_t__ PSW_BITS_AMODE_31BIT ;
 scalar_t__ PSW_BITS_AMODE_64BIT ;
 TYPE_3__ psw_bits (int ) ;

__attribute__((used)) static inline unsigned long kvm_s390_logical_to_effective(struct kvm_vcpu *vcpu,
         unsigned long ga)
{
 psw_t *psw = &vcpu->arch.sie_block->gpsw;

 if (psw_bits(*psw).eaba == PSW_BITS_AMODE_64BIT)
  return ga;
 if (psw_bits(*psw).eaba == PSW_BITS_AMODE_31BIT)
  return ga & ((1UL << 31) - 1);
 return ga & ((1UL << 24) - 1);
}
