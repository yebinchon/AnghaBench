
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int do_shl32_div32 (int ,int ) ;

__attribute__((used)) static uint32_t div_frac(uint32_t dividend, uint32_t divisor)
{
 do_shl32_div32(dividend, divisor);
 return dividend;
}
