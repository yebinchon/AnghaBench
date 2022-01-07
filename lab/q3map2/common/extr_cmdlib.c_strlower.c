
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

char *strlower( char *start ){
 char *in;
 in = start;
 while ( *in )
 {
  *in = tolower( *in );
  in++;
 }
 return start;
}
