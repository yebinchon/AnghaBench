
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ of_read_addr (int const*,int) ;

int of_out_of_range(const u32 *addr, const u32 *base,
      const u32 *size, int na, int ns)
{
 u64 a = of_read_addr(addr, na);
 u64 b = of_read_addr(base, na);

 if (a < b)
  return 1;

 b += of_read_addr(size, ns);
 if (a >= b)
  return 1;

 return 0;
}
