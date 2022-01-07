
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int token; } ;
typedef TYPE_1__ picoParser_t ;


 int _pico_parse_ex (TYPE_1__*,int,int) ;
 int strcmp (int ,char*) ;

int _pico_parse_check( picoParser_t *p, int allowLFs, char *str ){
 if ( !_pico_parse_ex( p,allowLFs,1 ) ) {
  return 0;
 }
 if ( !strcmp( p->token,str ) ) {
  return 1;
 }
 return 0;
}
