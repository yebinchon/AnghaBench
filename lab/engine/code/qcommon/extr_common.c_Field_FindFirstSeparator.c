
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static char *Field_FindFirstSeparator( char *s )
{
 int i;

 for( i = 0; i < strlen( s ); i++ )
 {
  if( s[ i ] == ';' )
   return &s[ i ];
 }

 return ((void*)0);
}
