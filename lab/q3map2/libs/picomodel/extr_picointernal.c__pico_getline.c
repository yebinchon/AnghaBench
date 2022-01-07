
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;

int _pico_getline( char *buf, int bufsize, char *dest, int destsize ){
 int pos;


 if ( dest == ((void*)0) || destsize < 1 ) {
  return -1;
 }
 memset( dest,0,destsize );


 if ( buf == ((void*)0) || bufsize < 1 ) {
  return -1;
 }


 for ( pos = 0; pos < bufsize && pos < destsize; pos++ )
 {
  if ( buf[pos] == '\n' ) {
   pos++; break;
  }
  dest[pos] = buf[pos];
 }

 dest[pos] = '\0';
 return pos;
}
