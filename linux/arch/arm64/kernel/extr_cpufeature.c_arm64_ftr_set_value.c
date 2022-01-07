
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arm64_ftr_bits {int shift; } ;
typedef int s64 ;


 int arm64_ftr_mask (struct arm64_ftr_bits const*) ;

__attribute__((used)) static u64 arm64_ftr_set_value(const struct arm64_ftr_bits *ftrp, s64 reg,
          s64 ftr_val)
{
 u64 mask = arm64_ftr_mask(ftrp);

 reg &= ~mask;
 reg |= (ftr_val << ftrp->shift) & mask;
 return reg;
}
