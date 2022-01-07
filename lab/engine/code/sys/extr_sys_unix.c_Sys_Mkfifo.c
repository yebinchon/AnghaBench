
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int FS_Remove (char const*) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ S_ISFIFO (int ) ;
 int fcntl (int,int ,int ) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int mkfifo (char const*,int) ;
 int stat (char const*,struct stat*) ;

FILE *Sys_Mkfifo( const char *ospath )
{
 FILE *fifo;
 int result;
 int fn;
 struct stat buf;


 if( !stat( ospath, &buf ) && S_ISFIFO( buf.st_mode ) )
  FS_Remove( ospath );

 result = mkfifo( ospath, 0600 );
 if( result != 0 )
  return ((void*)0);

 fifo = fopen( ospath, "w+" );
 if( fifo )
 {
  fn = fileno( fifo );
  fcntl( fn, F_SETFL, O_NONBLOCK );
 }

 return fifo;
}
