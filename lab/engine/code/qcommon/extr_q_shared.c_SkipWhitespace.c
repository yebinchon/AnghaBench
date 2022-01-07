
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int com_lines ;
 int qtrue ;

__attribute__((used)) static char *SkipWhitespace( char *data, qboolean *hasNewLines ) {
 int c;

 while( (c = *data) <= ' ') {
  if( !c ) {
   return ((void*)0);
  }
  if( c == '\n' ) {
   com_lines++;
   *hasNewLines = qtrue;
  }
  data++;
 }

 return data;
}
