
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ParseHex( const char *text ) {
 int value;
 int c;

 value = 0;
 while ( ( c = *text++ ) != 0 ) {
  if ( c >= '0' && c <= '9' ) {
   value = value * 16 + c - '0';
   continue;
  }
  if ( c >= 'a' && c <= 'f' ) {
   value = value * 16 + 10 + c - 'a';
   continue;
  }
  if ( c >= 'A' && c <= 'F' ) {
   value = value * 16 + 10 + c - 'A';
   continue;
  }
 }

 return value;
}
