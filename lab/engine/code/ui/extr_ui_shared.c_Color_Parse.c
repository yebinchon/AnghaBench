
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec4_t ;
typedef int qboolean ;


 int Float_Parse (char**,float*) ;
 int qfalse ;
 int qtrue ;

qboolean Color_Parse(char **p, vec4_t *c) {
 int i;
 float f;

 for (i = 0; i < 4; i++) {
  if (!Float_Parse(p, &f)) {
   return qfalse;
  }
  (*c)[i] = f;
 }
 return qtrue;
}
