
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int* buffer; int* curpos; int len; } ;


 scalar_t__ CharIsTokenDelimiter (char) ;
 TYPE_1__ ase ;
 char* s_token ;

__attribute__((used)) static int ASE_GetToken( qboolean restOfLine ){
 int i = 0;

 if ( ase.buffer == 0 ) {
  return 0;
 }

 if ( ( ase.curpos - ase.buffer ) == ase.len ) {
  return 0;
 }


 while ( ( ( ase.curpos - ase.buffer ) < ase.len ) &&
   ( *ase.curpos <= 32 ) )
 {
  ase.curpos++;
 }

 while ( ( ase.curpos - ase.buffer ) < ase.len )
 {
  s_token[i] = *ase.curpos;

  ase.curpos++;
  i++;

  if ( ( CharIsTokenDelimiter( s_token[i - 1] ) && !restOfLine ) ||
    ( ( s_token[i - 1] == '\n' ) || ( s_token[i - 1] == '\r' ) ) ) {
   s_token[i - 1] = 0;
   break;
  }
 }

 s_token[i] = 0;

 return 1;
}
