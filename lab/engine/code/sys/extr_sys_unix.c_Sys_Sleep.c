
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ STDIN_FILENO ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 scalar_t__ stdinIsATTY ;
 int usleep (int) ;

void Sys_Sleep( int msec )
{
 if( msec == 0 )
  return;

 if( stdinIsATTY )
 {
  fd_set fdset;

  FD_ZERO(&fdset);
  FD_SET(STDIN_FILENO, &fdset);
  if( msec < 0 )
  {
   select(STDIN_FILENO + 1, &fdset, ((void*)0), ((void*)0), ((void*)0));
  }
  else
  {
   struct timeval timeout;

   timeout.tv_sec = msec/1000;
   timeout.tv_usec = (msec%1000)*1000;
   select(STDIN_FILENO + 1, &fdset, ((void*)0), ((void*)0), &timeout);
  }
 }
 else
 {

  if( msec < 0 )
   msec = 10;

  usleep( msec * 1000 );
 }
}
