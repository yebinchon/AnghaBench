
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Com_CharIsOneOfCharset (char,char*) ;

char *Com_SkipCharset( char *s, char *sep )
{
 char *p = s;

 while( p )
 {
  if( Com_CharIsOneOfCharset( *p, sep ) )
   p++;
  else
   break;
 }

 return p;
}
