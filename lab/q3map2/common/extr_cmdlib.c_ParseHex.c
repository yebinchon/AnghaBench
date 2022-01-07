
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,char const*) ;

int ParseHex( const char *hex ){
 const char *str;
 int num;

 num = 0;
 str = hex;

 while ( *str )
 {
  num <<= 4;
  if ( *str >= '0' && *str <= '9' ) {
   num += *str - '0';
  }
  else if ( *str >= 'a' && *str <= 'f' ) {
   num += 10 + *str - 'a';
  }
  else if ( *str >= 'A' && *str <= 'F' ) {
   num += 10 + *str - 'A';
  }
  else{
   Error( "Bad hex number: %s",hex );
  }
  str++;
 }

 return num;
}
