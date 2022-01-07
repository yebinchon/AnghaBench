
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* token; } ;
typedef TYPE_1__ picoParser_t ;


 int _pico_parse_ex (TYPE_1__*,int,int) ;

char *_pico_parse_first( picoParser_t *p ){

 if ( p == ((void*)0) ) {
  return ((void*)0);
 }


 if ( !_pico_parse_ex( p,1,1 ) ) {
  return ((void*)0);
 }


 return p->token;
}
