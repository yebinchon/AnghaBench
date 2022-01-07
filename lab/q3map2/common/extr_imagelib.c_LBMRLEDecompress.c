
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;

byte *LBMRLEDecompress( byte *source,byte *unpacked, int bpwidth ){
 int count;
 byte b,rept;

 count = 0;

 do
 {
  rept = *source++;

  if ( rept > 0x80 ) {
   rept = ( rept ^ 0xff ) + 2;
   b = *source++;
   memset( unpacked,b,rept );
   unpacked += rept;
  }
  else if ( rept < 0x80 ) {
   rept++;
   memcpy( unpacked,source,rept );
   unpacked += rept;
   source += rept;
  }
  else{
   rept = 0;

  }
  count += rept;

 } while ( count < bpwidth );

 if ( count > bpwidth ) {
  Error( "Decompression exceeded width!\n" );
 }


 return source;
}
