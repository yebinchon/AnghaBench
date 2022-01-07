
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fraction; int sign; scalar_t__ exponent; } ;
union f32_u {float f; TYPE_1__ pack; } ;
struct TYPE_4__ {int fraction; int sign; int exponent; } ;
union f16_u {int ui; TYPE_2__ pack; } ;
typedef int uint16_t ;


 int CLAMP (int,int ,int) ;

uint16_t FloatToHalf(float in)
{
 union f32_u f32;
 union f16_u f16;

 f32.f = in;

 f16.pack.exponent = CLAMP((int)(f32.pack.exponent) - 112, 0, 31);
 f16.pack.fraction = f32.pack.fraction >> 13;
 f16.pack.sign = f32.pack.sign;

 return f16.ui;
}
