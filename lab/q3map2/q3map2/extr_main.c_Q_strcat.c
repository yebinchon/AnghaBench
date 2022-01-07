
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Q_strncpyz (char*,char const*,size_t) ;
 int abort () ;
 size_t strlen (char*) ;

char *Q_strcat( char *dst, size_t dlen, const char *src ) {
 size_t n = strlen( dst );

 if ( n > dlen ) {
  abort();
 }

 return Q_strncpyz( dst + n, src, dlen - n );
}
