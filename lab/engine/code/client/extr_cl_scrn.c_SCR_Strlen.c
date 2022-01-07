
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_IsColorString (char const*) ;

__attribute__((used)) static int SCR_Strlen( const char *str ) {
 const char *s = str;
 int count = 0;

 while ( *s ) {
  if ( Q_IsColorString( s ) ) {
   s += 2;
  } else {
   count++;
   s++;
  }
 }

 return count;
}
