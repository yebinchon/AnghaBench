
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char* COM_ParseExt (char**,int ) ;
 char* String_Alloc (char*) ;
 int qfalse ;
 int qtrue ;

qboolean String_Parse(char **p, const char **out) {
 char *token;

 token = COM_ParseExt(p, qfalse);
 if (token && token[0] != 0) {
  *(out) = String_Alloc(token);
  return qtrue;
 }
 return qfalse;
}
