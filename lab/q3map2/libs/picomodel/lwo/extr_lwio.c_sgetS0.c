
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 char* _pico_alloc (int) ;
 scalar_t__ flen ;
 int memcpy (char*,unsigned char*,int) ;
 int strlen (char*) ;

char *sgetS0( unsigned char **bp ){
 char *s;
 unsigned char *buf = *bp;
 int len;

 if ( flen == FLEN_ERROR ) {
  return ((void*)0);
 }

 len = strlen( (char *) buf ) + 1;
 if ( len == 1 ) {
  flen += 2;
  *bp += 2;
  return ((void*)0);
 }
 len += len & 1;
 s = _pico_alloc( len );
 if ( !s ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }

 memcpy( s, buf, len );
 flen += len;
 *bp += len;
 return s;
}
