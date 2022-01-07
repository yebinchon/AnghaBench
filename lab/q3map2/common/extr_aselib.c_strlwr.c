
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char* strlwr( char* string ){
 char *cp;
 for ( cp = string; *cp; ++cp )
 {
  if ( 'A' <= *cp && *cp <= 'Z' ) {
   *cp += 'a' - 'A';
  }
 }

 return string;
}
