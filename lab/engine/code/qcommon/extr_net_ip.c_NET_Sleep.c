
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;
typedef scalar_t__ SOCKET ;


 int Com_Printf (char*,int ) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ INVALID_SOCKET ;
 int NET_ErrorString () ;
 int NET_Event (int *) ;
 int SOCKET_ERROR ;
 int SleepEx (int,int ) ;
 scalar_t__ ip6_socket ;
 scalar_t__ ip_socket ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

void NET_Sleep(int msec)
{
 struct timeval timeout;
 fd_set fdr;
 int retval;
 SOCKET highestfd = INVALID_SOCKET;

 if(msec < 0)
  msec = 0;

 FD_ZERO(&fdr);

 if(ip_socket != INVALID_SOCKET)
 {
  FD_SET(ip_socket, &fdr);

  highestfd = ip_socket;
 }
 if(ip6_socket != INVALID_SOCKET)
 {
  FD_SET(ip6_socket, &fdr);

  if(highestfd == INVALID_SOCKET || ip6_socket > highestfd)
   highestfd = ip6_socket;
 }
 timeout.tv_sec = msec/1000;
 timeout.tv_usec = (msec%1000)*1000;

 retval = select(highestfd + 1, &fdr, ((void*)0), ((void*)0), &timeout);

 if(retval == SOCKET_ERROR)
  Com_Printf("Warning: select() syscall failed: %s\n", NET_ErrorString());
 else if(retval > 0)
  NET_Event(&fdr);
}
