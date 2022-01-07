
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * picoColor_t ;



void _pico_copy_color( picoColor_t src, picoColor_t dest ){
 dest[ 0 ] = src[ 0 ];
 dest[ 1 ] = src[ 1 ];
 dest[ 2 ] = src[ 2 ];
 dest[ 3 ] = src[ 3 ];
}
