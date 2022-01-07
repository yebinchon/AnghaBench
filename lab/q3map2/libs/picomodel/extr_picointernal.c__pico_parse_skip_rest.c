
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoParser_t ;


 scalar_t__ _pico_parse_ex (int *,int ,int ) ;

void _pico_parse_skip_rest( picoParser_t *p ){
 while ( _pico_parse_ex( p,0,0 ) ) ;
}
