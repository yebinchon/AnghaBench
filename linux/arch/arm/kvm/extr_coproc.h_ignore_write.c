
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_params {int dummy; } ;



__attribute__((used)) static inline bool ignore_write(struct kvm_vcpu *vcpu,
    const struct coproc_params *p)
{
 return 1;
}
