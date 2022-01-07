
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short byte ;


 unsigned short* crctable ;

void CRC_ProcessByte( unsigned short *crcvalue, byte data ){
 *crcvalue = ( *crcvalue << 8 ) ^ crctable[( *crcvalue >> 8 ) ^ data];
}
