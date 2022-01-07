
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __div_u64_rem (int ,int ,int *) ;

__attribute__((used)) static inline u64 __div_u64(u64 dividend, u32 divisor)
{
 u32 remainder;

 return __div_u64_rem(dividend, divisor, &remainder);
}
