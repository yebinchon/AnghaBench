
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*) ;

int bufLittleShort( byte *buf, int len, int *pos ){
 byte b1, b2;

 if ( ( len - *pos ) < 2 ) {
  Error( "Unexpected buffer end" );
 }

 b1 = buf[*pos]; *pos += 1;
 b2 = buf[*pos]; *pos += 1;

 return (short)( b1 + b2 * 256 );
}
