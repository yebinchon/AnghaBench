
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ SLICE_LOW_TOP ;

__attribute__((used)) static inline bool slice_addr_is_low(unsigned long addr)
{
 u64 tmp = (u64)addr;

 return tmp < SLICE_LOW_TOP;
}
