
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int strncpy (char*,char const*,size_t) ;

char *Q_strncpyz( char *dst, const char *src, size_t len ) {
 if ( len == 0 ) {
  abort();
 }

 strncpy( dst, src, len );
 dst[ len - 1 ] = '\0';
 return dst;
}
