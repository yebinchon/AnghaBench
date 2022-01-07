
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _getcwd (char*,int) ;
 int getcwd (char*,int) ;
 int strcat (char*,char*) ;

void Q_getwd( char *out ){
 int i = 0;






 getcwd( out, 256 );
 strcat( out, "/" );

 while ( out[i] != 0 )
 {
  if ( out[i] == '\\' ) {
   out[i] = '/';
  }
  i++;
 }
}
