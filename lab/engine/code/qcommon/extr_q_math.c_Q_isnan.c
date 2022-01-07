
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int ui; } ;
typedef TYPE_1__ floatint_t ;



int Q_isnan( float x )
{
 floatint_t fi;

 fi.f = x;
 fi.ui &= 0x7FFFFFFF;
 fi.ui = 0x7F800000 - fi.ui;

 return (int)( (unsigned int)fi.ui >> 31 );
}
