
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_isprint( int c )
{
 if ( c >= 0x20 && c <= 0x7E )
  return ( 1 );
 return ( 0 );
}
