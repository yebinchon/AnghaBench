
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Com_CharIsOneOfCharset (char,char*) ;

char *Com_SkipTokens( char *s, int numTokens, char *sep )
{
 int sepCount = 0;
 char *p = s;

 while( sepCount < numTokens )
 {
  if( Com_CharIsOneOfCharset( *p++, sep ) )
  {
   sepCount++;
   while( Com_CharIsOneOfCharset( *p, sep ) )
    p++;
  }
  else if( *p == '\0' )
   break;
 }

 if( sepCount == numTokens )
  return p;
 else
  return s;
}
