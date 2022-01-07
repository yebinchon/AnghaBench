
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; char* cursor; char* max; size_t tokenSize; char* token; int curLine; } ;
typedef TYPE_1__ picoParser_t ;



int _pico_parse_ex( picoParser_t *p, int allowLFs, int handleQuoted ){
 int hasLFs = 0;
 char *old;


 if ( p == ((void*)0) || p->buffer == ((void*)0) ||
   p->cursor < p->buffer ||
   p->cursor >= p->max ) {
  return 0;
 }

 p->tokenSize = 0;
 p->token[ 0 ] = '\0';
 old = p->cursor;


 while ( p->cursor < p->max && *p->cursor <= 32 )
 {
  if ( *p->cursor == '\n' ) {
   p->curLine++;
   hasLFs++;
  }
  p->cursor++;
 }

 if ( ( hasLFs > 0 ) && !allowLFs ) {
  p->cursor = old;
  return 0;
 }

 if ( *p->cursor == '\"' && handleQuoted ) {
  p->cursor++;
  while ( p->cursor < p->max && *p->cursor )
  {
   if ( *p->cursor == '\\' ) {
    if ( *( p->cursor + 1 ) == '"' ) {
     p->cursor++;
    }
    p->token[ p->tokenSize++ ] = *p->cursor++;
    continue;
   }
   else if ( *p->cursor == '\"' ) {
    p->cursor++;
    break;
   }
   else if ( *p->cursor == '\n' ) {
    p->curLine++;
   }
   p->token[ p->tokenSize++ ] = *p->cursor++;
  }

  p->token[ p->tokenSize ] = '\0';
  return 1;
 }

 while ( p->cursor < p->max && *p->cursor > 32 )
 {
  if ( *p->cursor == '\n' ) {
   p->curLine++;
  }
  p->token[ p->tokenSize++ ] = *p->cursor++;
 }

 p->token[ p->tokenSize ] = '\0';
 return 1;
}
