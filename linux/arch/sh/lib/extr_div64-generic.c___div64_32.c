
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;


 int __xdiv64_32 (int,int) ;

uint32_t __div64_32(u64 *xp, u32 y)
{
 uint32_t rem;
 uint64_t q = __xdiv64_32(*xp, y);

 rem = *xp - q * y;
 *xp = q;

 return rem;
}
