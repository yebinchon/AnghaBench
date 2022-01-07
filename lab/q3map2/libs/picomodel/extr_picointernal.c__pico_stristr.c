
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pico_strnicmp (char*,char const*,size_t const) ;
 size_t strlen (char const*) ;

char *_pico_stristr( char *str, const char *substr ){
 const size_t sublen = strlen( substr );
 while ( *str )
 {
  if ( !_pico_strnicmp( str,substr,sublen ) ) {
   break;
  }
  str++;
 }
 if ( !( *str ) ) {
  str = ((void*)0);
 }
 return str;
}
