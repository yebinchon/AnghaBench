
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void StripTrailing( char *e ) {
 char *s;

 s = e + strlen( e ) - 1;
 while ( s >= e && *s <= 32 )
 {
  *s = 0;
  s--;
 }
}
