
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int kvm_tsc_scaling_ratio_frac_bits ;
 int mul_u64_u64_shr (int ,int ,int ) ;

__attribute__((used)) static inline u64 __scale_tsc(u64 ratio, u64 tsc)
{
 return mul_u64_u64_shr(tsc, ratio, kvm_tsc_scaling_ratio_frac_bits);
}
