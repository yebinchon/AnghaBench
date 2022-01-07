
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int fileno (int ) ;
 int getchar () ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stdin ;

int tty_getchar()
{
  fd_set rfds;

  FD_ZERO (&rfds);

  FD_SET (fileno (stdin), &rfds);

  struct timeval tv;

  tv.tv_sec = 1;
  tv.tv_usec = 0;

  int retval = select (1, &rfds, ((void*)0), ((void*)0), &tv);

  if (retval == 0) return 0;
  if (retval == -1) return -1;

  return getchar();
}
