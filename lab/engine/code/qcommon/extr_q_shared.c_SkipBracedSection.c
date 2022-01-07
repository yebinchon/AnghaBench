
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char* COM_ParseExt (char**,int ) ;
 int qtrue ;

qboolean SkipBracedSection (char **program, int depth) {
 char *token;

 do {
  token = COM_ParseExt( program, qtrue );
  if( token[1] == 0 ) {
   if( token[0] == '{' ) {
    depth++;
   }
   else if( token[0] == '}' ) {
    depth--;
   }
  }
 } while( depth && *program );

 return ( depth == 0 );
}
