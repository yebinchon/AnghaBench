
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *_pico_strlwr( char *str ){
 char *cp;
 for ( cp = str; *cp; ++cp )
 {
  if ( 'A' <= *cp && *cp <= 'Z' ) {
   *cp += ( 'a' - 'A' );
  }
 }
 return str;
}
