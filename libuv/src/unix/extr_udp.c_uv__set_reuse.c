
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yes ;
struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sockfd ;


 scalar_t__ AF_UNIX ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 int UV__ERR (int ) ;
 int errno ;
 int getsockname (int,struct sockaddr*,unsigned int*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int uv__set_reuse(int fd) {
  int yes;
  yes = 1;
  if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes)))
    return UV__ERR(errno);


  return 0;
}
