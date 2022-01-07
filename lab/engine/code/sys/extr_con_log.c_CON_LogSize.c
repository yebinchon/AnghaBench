
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_LOG ;
 scalar_t__ readPos ;
 scalar_t__ writePos ;

unsigned int CON_LogSize( void )
{
 if( readPos <= writePos )
  return writePos - readPos;
 else
  return writePos + MAX_LOG - readPos;
}
