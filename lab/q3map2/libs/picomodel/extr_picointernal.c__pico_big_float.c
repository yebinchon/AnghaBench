
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int * c; } ;
typedef TYPE_1__ floatSwapUnion ;



float _pico_big_float( float src ){
 floatSwapUnion in,out;
 in.f = src;
 out.c[ 0 ] = in.c[ 3 ];
 out.c[ 1 ] = in.c[ 2 ];
 out.c[ 2 ] = in.c[ 1 ];
 out.c[ 3 ] = in.c[ 0 ];
 return out.f;
}
