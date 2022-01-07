
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CON_LogSize () ;
 int Com_Memcpy (char*,scalar_t__,unsigned int) ;
 unsigned int MAX_LOG ;
 scalar_t__ consoleLog ;
 unsigned int readPos ;

unsigned int CON_LogRead( char *out, unsigned int outSize )
{
 unsigned int firstChunk;
 unsigned int secondChunk;

 if( CON_LogSize( ) < outSize )
  outSize = CON_LogSize( );

 if( readPos + outSize > MAX_LOG )
 {
  firstChunk = MAX_LOG - readPos;
  secondChunk = outSize - firstChunk;
 }
 else
 {
  firstChunk = outSize;
  secondChunk = 0;
 }

 Com_Memcpy( out, consoleLog + readPos, firstChunk );
 Com_Memcpy( out + firstChunk, consoleLog, secondChunk );

 readPos = ( readPos + outSize ) % MAX_LOG;

 return outSize;
}
