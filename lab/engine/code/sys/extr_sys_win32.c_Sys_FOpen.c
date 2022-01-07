
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 size_t strlen (char const*) ;

FILE *Sys_FOpen( const char *ospath, const char *mode ) {
 size_t length;


 length = strlen( ospath );
 if ( length == 0 || ospath[length-1] == ' ' || ospath[length-1] == '.' ) {
  return ((void*)0);
 }

 return fopen( ospath, mode );
}
