
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline bool pll_is_valid(u64 val0, u64 val1, u64 min, u64 max)
{
 return (val0 >= (val1 * min) && val0 <= (val1 * max));
}
