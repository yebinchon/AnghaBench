
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* safe_malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *copystring( const char *s ){
 char *b;
 b = safe_malloc( strlen( s ) + 1 );
 strcpy( b, s );
 return b;
}
