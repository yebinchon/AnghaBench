
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int ui; } ;
typedef TYPE_1__ floatint_t ;


 int LongSwap (int ) ;

float FloatSwap (const float *f) {
 floatint_t out;

 out.f = *f;
 out.ui = LongSwap(out.ui);

 return out.f;
}
