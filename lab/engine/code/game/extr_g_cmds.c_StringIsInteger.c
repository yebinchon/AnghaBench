
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int isdigit (char const) ;
 int qfalse ;
 int qtrue ;
 int strlen (char const*) ;

qboolean StringIsInteger( const char * s ) {
 int i;
 int len;
 qboolean foundDigit;

 len = strlen( s );
 foundDigit = qfalse;

 for ( i=0 ; i < len ; i++ ) {
  if ( !isdigit( s[i] ) ) {
   return qfalse;
  }

  foundDigit = qtrue;
 }

 return foundDigit;
}
