
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ m_low; scalar_t__ m_high; } ;
typedef TYPE_1__ uint128_t ;



__attribute__((used)) static uint128_t add_128_128(uint128_t a, uint128_t b)
{
 uint128_t result;

 result.m_low = a.m_low + b.m_low;
 result.m_high = a.m_high + b.m_high + (result.m_low < a.m_low);

 return result;
}
