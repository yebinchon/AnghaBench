
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;

__attribute__((used)) static int hexdigit(int c)
{
 if( '0' <= c && c <= '9' )
  return c - '0';
 if( 'A' <= c && c <= 'F' )
  return c - ('A' - 10);
 if( 'a' <= c && c <= 'f' )
  return c - ('a' - 10);
 return EOF;
}
