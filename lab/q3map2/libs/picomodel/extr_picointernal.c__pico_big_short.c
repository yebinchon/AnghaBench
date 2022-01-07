
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
short _pico_big_short( short src ){
 return ( ( src & 0xFF00 ) >> 8 ) |
     ( ( src & 0x00FF ) << 8 );
}
