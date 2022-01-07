
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

void _pico_first_token( char *str ) {
 if ( !str || ! * str ) {
  return;
 }
 while (*str && !isspace(*str))
  str++;
 *str = '\0';
}
