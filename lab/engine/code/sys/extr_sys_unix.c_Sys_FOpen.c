
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 scalar_t__ S_ISDIR (int ) ;
 int * fopen (char const*,char const*) ;
 int stat (char const*,struct stat*) ;

FILE *Sys_FOpen( const char *ospath, const char *mode ) {
 struct stat buf;


 if ( !stat( ospath, &buf ) && S_ISDIR( buf.st_mode ) )
  return ((void*)0);

 return fopen( ospath, mode );
}
