
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_SHIFT ;
 int size_or_mask ;

__attribute__((used)) static u64 get_mtrr_size(u64 mask)
{
 u64 size;

 mask >>= PAGE_SHIFT;
 mask |= size_or_mask;
 size = -mask;
 size <<= PAGE_SHIFT;
 return size;
}
