
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exponent; int fraction; int sign; } ;
union f32_u {float f; TYPE_1__ pack; } ;
struct TYPE_4__ {int fraction; int sign; scalar_t__ exponent; } ;
union f16_u {TYPE_2__ pack; int ui; } ;
typedef int uint16_t ;



float HalfToFloat(uint16_t in)
{
 union f32_u f32;
 union f16_u f16;

 f16.ui = in;

 f32.pack.exponent = (int)(f16.pack.exponent) + 112;
 f32.pack.fraction = f16.pack.fraction << 13;
 f32.pack.sign = f16.pack.sign;

 return f32.f;
}
