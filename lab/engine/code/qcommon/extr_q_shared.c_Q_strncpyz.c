
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int strncpy (char*,char const*,int) ;

void Q_strncpyz( char *dest, const char *src, int destsize ) {
  if ( !dest ) {
    Com_Error( ERR_FATAL, "Q_strncpyz: NULL dest" );
  }
 if ( !src ) {
  Com_Error( ERR_FATAL, "Q_strncpyz: NULL src" );
 }
 if ( destsize < 1 ) {
  Com_Error(ERR_FATAL,"Q_strncpyz: destsize < 1" );
 }

 strncpy( dest, src, destsize-1 );
  dest[destsize-1] = 0;
}
