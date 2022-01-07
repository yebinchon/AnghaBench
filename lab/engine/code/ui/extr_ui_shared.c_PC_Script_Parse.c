
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script ;
typedef int qboolean ;
struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ pc_token_t ;


 int Q_strcat (char*,int,char*) ;
 scalar_t__ Q_stricmp (char*,char*) ;
 char* String_Alloc (char*) ;
 int memset (char*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;
 char* va (char*,char*) ;

qboolean PC_Script_Parse(int handle, const char **out) {
 char script[1024];
 pc_token_t token;

 memset(script, 0, sizeof(script));



 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;
 if (Q_stricmp(token.string, "{") != 0) {
     return qfalse;
 }

 while ( 1 ) {
  if (!trap_PC_ReadToken(handle, &token))
   return qfalse;

  if (Q_stricmp(token.string, "}") == 0) {
   *out = String_Alloc(script);
   return qtrue;
  }

  if (token.string[1] != '\0') {
   Q_strcat(script, 1024, va("\"%s\"", token.string));
  } else {
   Q_strcat(script, 1024, token.string);
  }
  Q_strcat(script, 1024, " ");
 }
 return qfalse;
}
