
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

char *Q_strupr( char *s1 ) {
    char *s;

    s = s1;
 while ( *s ) {
  *s = toupper(*s);
  s++;
 }
    return s1;
}
