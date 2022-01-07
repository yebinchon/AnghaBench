
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline int in_addr_range(u64 addr, u64 a, u64 b)
{
 if (a <= b)
  return (addr >= a) && (addr <= b);
 else

  return (addr >= a) || (addr <= b);
}
