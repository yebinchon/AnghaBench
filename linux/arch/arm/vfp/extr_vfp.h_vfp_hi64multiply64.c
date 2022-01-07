
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int mul64to128 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u64 vfp_hi64multiply64(u64 n, u64 m)
{
 u64 rh, rl;
 mul64to128(&rh, &rl, n, m);
 return rh | (rl != 0);
}
