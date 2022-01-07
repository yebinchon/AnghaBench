
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_IsColorString (char*) ;

char *Q_CleanStr( char *string ) {
 char* d;
 char* s;
 int c;

 s = string;
 d = string;
 while ((c = *s) != 0 ) {
  if ( Q_IsColorString( s ) ) {
   s++;
  }
  else if ( c >= 0x20 && c <= 0x7E ) {
   *d++ = c;
  }
  s++;
 }
 *d = '\0';

 return string;
}
