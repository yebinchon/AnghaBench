
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EXT_FRAC_BITS ;
 int div64_u64 (int,int) ;

__attribute__((used)) static inline u64 div_ext_fp(u64 x, u64 y)
{
 return div64_u64(x << EXT_FRAC_BITS, y);
}
