
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int _pico_strchcount( char *str, int ch ){
 int count = 0;
 while ( *str++ ) if ( *str == ch ) {
   count++;
  }
 return count;
}
