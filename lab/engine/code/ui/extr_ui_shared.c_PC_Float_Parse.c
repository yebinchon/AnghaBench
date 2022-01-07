
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {char* string; scalar_t__ type; float floatvalue; } ;
typedef TYPE_1__ pc_token_t ;


 int PC_SourceError (int,char*,char*) ;
 scalar_t__ TT_NUMBER ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

qboolean PC_Float_Parse(int handle, float *f) {
 pc_token_t token;
 int negative = qfalse;

 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;
 if (token.string[0] == '-') {
  if (!trap_PC_ReadToken(handle, &token))
   return qfalse;
  negative = qtrue;
 }
 if (token.type != TT_NUMBER) {
  PC_SourceError(handle, "expected float but found %s", token.string);
  return qfalse;
 }
 if (negative)
  *f = -token.floatvalue;
 else
  *f = token.floatvalue;
 return qtrue;
}
