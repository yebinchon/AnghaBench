
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int div64_u64 (int,int) ;

__attribute__((used)) static inline u64 do_div_round_closest(u64 dividend, u64 divisor)
{
 dividend += divisor / 2;
 return div64_u64(dividend, divisor);
}
