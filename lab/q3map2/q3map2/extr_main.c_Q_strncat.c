
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (size_t,size_t) ;
 char* Q_strncpyz (char*,char const*,int ) ;
 int abort () ;
 size_t strlen (char*) ;

char *Q_strncat( char *dst, size_t dlen, const char *src, size_t slen ) {
 size_t n = strlen( dst );

 if ( n > dlen ) {
  abort();
 }

 return Q_strncpyz( dst + n, src, MIN( slen, dlen - n ) );
}
