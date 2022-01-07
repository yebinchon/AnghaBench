
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;


 int assign_masked (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void masked_increment(ulong *reg, ulong mask, int inc)
{
 assign_masked(reg, *reg + inc, mask);
}
