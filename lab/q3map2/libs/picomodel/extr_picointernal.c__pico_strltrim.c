
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

char *_pico_strltrim( char *str ){
 char *str1 = str, *str2 = str;

 while ( isspace( *str2 ) ) str2++;
 if ( str2 != str ) {
  while ( *str2 != '\0' )
   *str1++ = *str2++;
 }
 return str;
}
