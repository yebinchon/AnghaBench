
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ pc_token_t ;


 int UI_ParseMenu (char*) ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

qboolean Load_Menu(int handle) {
 pc_token_t token;

 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;
 if (token.string[0] != '{') {
  return qfalse;
 }

 while ( 1 ) {

  if (!trap_PC_ReadToken(handle, &token))
   return qfalse;

  if ( token.string[0] == 0 ) {
   return qfalse;
  }

  if ( token.string[0] == '}' ) {
   return qtrue;
  }

  UI_ParseMenu(token.string);
 }
 return qfalse;
}
