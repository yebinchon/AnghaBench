
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* token; } ;
typedef TYPE_1__ picoParser_t ;


 int _pico_parse_ex (TYPE_1__*,int,int) ;

int _pico_parse_skip_braced( picoParser_t *p ){
 int firstToken = 1;
 int level;


 if ( p == ((void*)0) ) {
  return 0;
 }


 level = 0;


 while ( 1 )
 {

  if ( !_pico_parse_ex( p,1,1 ) ) {

   return 0;
  }

  if ( firstToken && p->token[0] != '{' ) {

   return 0;
  }

  firstToken = 0;


  if ( p->token[1] == '\0' ) {
   if ( p->token[0] == '{' ) {
    level++;
   }
   if ( p->token[0] == '}' ) {
    level--;
   }
  }

  if ( level == 0 ) {
   break;
  }
 }

 return 1;
}
