
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*) ;

int bufLittleLong( byte *buf, int len, int *pos ){
 byte b1, b2, b3, b4;

 if ( ( len - *pos ) < 4 ) {
  Error( "Unexpected buffer end" );
 }

 b1 = buf[*pos]; *pos += 1;
 b2 = buf[*pos]; *pos += 1;
 b3 = buf[*pos]; *pos += 1;
 b4 = buf[*pos]; *pos += 1;

 return b1 + ( b2 << 8 ) + ( b3 << 16 ) + ( b4 << 24 );
}
