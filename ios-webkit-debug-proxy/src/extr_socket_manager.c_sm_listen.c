
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int ra ;
typedef int local ;
typedef struct sockaddr SOCKADDR ;


 void* AF_INET ;
 int FIONBIO ;
 int F_GETFL ;
 void* INADDR_ANY ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int WSAGetLastError () ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int closesocket (int) ;
 int fcntl (int,int ) ;
 int fprintf (int ,char*,int) ;
 void* htons (int) ;
 scalar_t__ ioctl (int,int ,char*) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 scalar_t__ listen (int,int) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (void*,int ,int ) ;
 int stderr ;

int sm_listen(int port) {
  int fd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (fd < 0) {
    return -1;
  }
  int opts = fcntl(fd, F_GETFL);
  struct sockaddr_in local;
  local.sin_family = AF_INET;
  local.sin_addr.s_addr = INADDR_ANY;
  local.sin_port = htons(port);
  int ra = 1;
  int nb = 1;
  if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, (char *)&ra,sizeof(ra)) < 0 ||
      opts < 0 ||
      ioctl(fd, FIONBIO, (char *)&nb) < 0 ||
      bind(fd, (struct sockaddr*)&local, sizeof(local)) < 0 ||
      listen(fd, 5)) {
    close(fd);
    return -1;
  }

  return fd;
}
