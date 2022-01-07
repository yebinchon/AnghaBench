
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 scalar_t__ GetToken (scalar_t__) ;
 scalar_t__ oldScriptLine ;
 scalar_t__ qfalse ;
 scalar_t__ scriptline ;
 int strcat (char*,char*) ;
 int tabDepth ;
 char* token ;

qboolean GetTokenAppend( char *buffer, qboolean crossline ){
 qboolean r;
 int i;



 r = GetToken( crossline );
 if ( r == qfalse || buffer == ((void*)0) || token[ 0 ] == '\0' ) {
  return r;
 }


 if ( token[ 0 ] == '}' ) {
  tabDepth--;
 }


 if ( oldScriptLine != scriptline ) {
  strcat( buffer, "\n" );
  for ( i = 0; i < tabDepth; i++ )
   strcat( buffer, "\t" );
 }
 else{
  strcat( buffer, " " );
 }
 oldScriptLine = scriptline;
 strcat( buffer, token );


 if ( token[ 0 ] == '{' ) {
  tabDepth++;
 }


 return r;
}
