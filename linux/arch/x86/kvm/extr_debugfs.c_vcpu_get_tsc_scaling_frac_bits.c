
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int kvm_tsc_scaling_ratio_frac_bits ;

__attribute__((used)) static int vcpu_get_tsc_scaling_frac_bits(void *data, u64 *val)
{
 *val = kvm_tsc_scaling_ratio_frac_bits;
 return 0;
}
