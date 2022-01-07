
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CON_LogFree () ;
 int CON_LogSize () ;
 int Com_Memcpy (char*,char const*,unsigned int) ;
 size_t MAX_LOG ;
 char* consoleLog ;
 size_t readPos ;
 unsigned int strlen (char const*) ;
 unsigned int writePos ;

unsigned int CON_LogWrite( const char *in )
{
 unsigned int length = strlen( in );
 unsigned int firstChunk;
 unsigned int secondChunk;

 while( CON_LogFree( ) < length && CON_LogSize( ) > 0 )
 {

  while( consoleLog[ readPos ] != '\n' && CON_LogSize( ) > 1 )
   readPos = ( readPos + 1 ) % MAX_LOG;


  readPos = ( readPos + 1 ) % MAX_LOG;
 }

 if( CON_LogFree( ) < length )
  return 0;

 if( writePos + length > MAX_LOG )
 {
  firstChunk = MAX_LOG - writePos;
  secondChunk = length - firstChunk;
 }
 else
 {
  firstChunk = length;
  secondChunk = 0;
 }

 Com_Memcpy( consoleLog + writePos, in, firstChunk );
 Com_Memcpy( consoleLog, in + firstChunk, secondChunk );

 writePos = ( writePos + length ) % MAX_LOG;

 return length;
}
