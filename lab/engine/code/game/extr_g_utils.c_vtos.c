
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;


 int Com_sprintf (char*,int,char*,int,int,int) ;

char *vtos( const vec3_t v ) {
 static int index;
 static char str[8][32];
 char *s;


 s = str[index];
 index = (index + 1)&7;

 Com_sprintf (s, 32, "(%i %i %i)", (int)v[0], (int)v[1], (int)v[2]);

 return s;
}
