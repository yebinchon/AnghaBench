
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_resume; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s64 ;


 int EINVAL ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;
 int ns_to_ktime (scalar_t__) ;

int kvm_mips_set_count_resume(struct kvm_vcpu *vcpu, s64 count_resume)
{





 if (count_resume < 0 || count_resume > ktime_to_ns(ktime_get()))
  return -EINVAL;

 vcpu->arch.count_resume = ns_to_ktime(count_resume);
 return 0;
}
