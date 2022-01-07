
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int SOCKET_ERROR ;
 int WSAGetLastError () ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int select (int,int *,int *,int ,struct timeval*) ;
 int stderr ;

__attribute__((used)) static int socket_wait(int fd, int is_read)
{
 fd_set fds, *fdr = 0, *fdw = 0;
 struct timeval tv;
 int ret;
 tv.tv_sec = 5; tv.tv_usec = 0;
 FD_ZERO(&fds);
 FD_SET(fd, &fds);
 if (is_read) fdr = &fds;
 else fdw = &fds;
 ret = select(fd+1, fdr, fdw, 0, &tv);

 if (ret == -1) perror("select");






 return ret;
}
