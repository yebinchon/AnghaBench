
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;



float SquareRootFloat(float number) {
 floatint_t t;
 float x, y;
 const float f = 1.5F;

 x = number * 0.5F;
 t.f = number;
 t.i = 0x5f3759df - ( t.i >> 1 );
 y = t.f;
 y = y * ( f - ( x * y * y ) );
 y = y * ( f - ( x * y * y ) );
 return number * y;
}
