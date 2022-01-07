
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* picoColor_t ;



void _pico_set_color( picoColor_t c, int r, int g, int b, int a ){
 c[ 0 ] = r;
 c[ 1 ] = g;
 c[ 2 ] = b;
 c[ 3 ] = a;
}
