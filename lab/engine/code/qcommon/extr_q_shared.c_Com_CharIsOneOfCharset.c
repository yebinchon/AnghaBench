
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int qfalse ;
 int qtrue ;
 int strlen (char*) ;

__attribute__((used)) static qboolean Com_CharIsOneOfCharset( char c, char *set )
{
 int i;

 for( i = 0; i < strlen( set ); i++ )
 {
  if( set[ i ] == c )
   return qtrue;
 }

 return qfalse;
}
