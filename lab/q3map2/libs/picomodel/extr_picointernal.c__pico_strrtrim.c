
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

char *_pico_strrtrim( char *str ){
 if ( str && *str ) {
  char *str1 = str;
  int allspace = 1;

  while ( *str1 )
  {
   if ( allspace && !isspace( *str1 ) ) {
    allspace = 0;
   }
   str1++;
  }
  if ( allspace ) {
   *str = '\0';
  }
  else {
   str1--;
   while ( ( isspace( *str1 ) ) && ( str1 >= str ) )
    *str1-- = '\0';
  }
 }
 return str;
}
