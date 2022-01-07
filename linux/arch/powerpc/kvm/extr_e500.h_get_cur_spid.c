
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int mas6; } ;



__attribute__((used)) static inline unsigned int get_cur_spid(const struct kvm_vcpu *vcpu)
{
 return (vcpu->arch.shared->mas6 >> 16) & 0xff;
}
