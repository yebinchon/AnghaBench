
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;
typedef int qboolean ;


 int G_Error (char*) ;
 int MAX_STRING_CHARS ;
 int strcmp (char*,char*) ;
 int trap_GetConfigstring (int,char*,int) ;
 int trap_SetConfigstring (int,char*) ;

int G_FindConfigstringIndex( char *name, int start, int max, qboolean create ) {
 int i;
 char s[MAX_STRING_CHARS];

 if ( !name || !name[0] ) {
  return 0;
 }

 for ( i=1 ; i<max ; i++ ) {
  trap_GetConfigstring( start + i, s, sizeof( s ) );
  if ( !s[0] ) {
   break;
  }
  if ( !strcmp( s, name ) ) {
   return i;
  }
 }

 if ( !create ) {
  return 0;
 }

 if ( i == max ) {
  G_Error( "G_FindConfigstringIndex: overflow" );
 }

 trap_SetConfigstring( start + i, name );

 return i;
}
