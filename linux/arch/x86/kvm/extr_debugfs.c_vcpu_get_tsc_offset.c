
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tsc_offset; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static int vcpu_get_tsc_offset(void *data, u64 *val)
{
 struct kvm_vcpu *vcpu = (struct kvm_vcpu *) data;
 *val = vcpu->arch.tsc_offset;
 return 0;
}
