
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_isalpha( int c )
{
 if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
  return ( 1 );
 return ( 0 );
}
