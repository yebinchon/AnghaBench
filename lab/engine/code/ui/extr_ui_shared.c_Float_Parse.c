
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char* COM_ParseExt (char**,int ) ;
 float atof (char*) ;
 int qfalse ;
 int qtrue ;

qboolean Float_Parse(char **p, float *f) {
 char *token;
 token = COM_ParseExt(p, qfalse);
 if (token && token[0] != 0) {
  *f = atof(token);
  return qtrue;
 } else {
  return qfalse;
 }
}
