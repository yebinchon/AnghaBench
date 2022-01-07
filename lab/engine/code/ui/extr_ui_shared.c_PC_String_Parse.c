
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int string; } ;
typedef TYPE_1__ pc_token_t ;


 char* String_Alloc (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

qboolean PC_String_Parse(int handle, const char **out) {
 pc_token_t token;

 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;

 *(out) = String_Alloc(token.string);
    return qtrue;
}
