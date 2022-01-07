
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int _pico_big_long( int src ){
 return ( ( src & 0xFF000000 ) >> 24 ) |
     ( ( src & 0x00FF0000 ) >> 8 ) |
     ( ( src & 0x0000FF00 ) << 8 ) |
     ( ( src & 0x000000FF ) << 24 );
}
