
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ dec_jiffies; scalar_t__ dec; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



u32 kvmppc_get_dec(struct kvm_vcpu *vcpu, u64 tb)
{
 u64 jd = tb - vcpu->arch.dec_jiffies;






 return vcpu->arch.dec - jd;
}
