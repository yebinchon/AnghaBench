
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pt_cap_desc {size_t leaf; size_t reg; unsigned int mask; } ;
typedef enum pt_capabilities { ____Placeholder_pt_capabilities } pt_capabilities ;


 size_t PT_CPUID_REGS_NUM ;
 unsigned int __ffs (unsigned int) ;
 struct pt_cap_desc* pt_caps ;

u32 intel_pt_validate_cap(u32 *caps, enum pt_capabilities capability)
{
 struct pt_cap_desc *cd = &pt_caps[capability];
 u32 c = caps[cd->leaf * PT_CPUID_REGS_NUM + cd->reg];
 unsigned int shift = __ffs(cd->mask);

 return (c & cd->mask) >> shift;
}
