
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char tolower (char const) ;

int Com_HexStrToInt( const char *str )
{
 if ( !str )
  return -1;


 if( str[ 0 ] == '0' && str[ 1 ] == 'x' && str[ 2 ] != '\0' )
 {
  int i, n = 0, len = strlen( str );

  for( i = 2; i < len; i++ )
  {
   char digit;

   n *= 16;

   digit = tolower( str[ i ] );

   if( digit >= '0' && digit <= '9' )
    digit -= '0';
   else if( digit >= 'a' && digit <= 'f' )
    digit = digit - 'a' + 10;
   else
    return -1;

   n += digit;
  }

  return n;
 }

 return -1;
}
