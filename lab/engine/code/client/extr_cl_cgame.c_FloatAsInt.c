
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;



__attribute__((used)) static int FloatAsInt( float f ) {
 floatint_t fi;
 fi.f = f;
 return fi.i;
}
