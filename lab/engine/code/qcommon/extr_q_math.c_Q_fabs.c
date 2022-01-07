
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;



float Q_fabs( float f ) {
 floatint_t fi;
 fi.f = f;
 fi.i &= 0x7FFFFFFF;
 return fi.f;
}
