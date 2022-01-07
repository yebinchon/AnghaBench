
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int arg ;
typedef int addr ;


 int AF_INET ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int htonl (int ) ;
 int htons (int) ;
 scalar_t__ listen (int,int) ;
 int os_set_fd_block (int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

int port_listen_fd(int port)
{
 struct sockaddr_in addr;
 int fd, err, arg;

 fd = socket(PF_INET, SOCK_STREAM, 0);
 if (fd == -1)
  return -errno;

 arg = 1;
 if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &arg, sizeof(arg)) < 0) {
  err = -errno;
  goto out;
 }

 addr.sin_family = AF_INET;
 addr.sin_port = htons(port);
 addr.sin_addr.s_addr = htonl(INADDR_ANY);
 if (bind(fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  err = -errno;
  goto out;
 }

 if (listen(fd, 1) < 0) {
  err = -errno;
  goto out;
 }

 err = os_set_fd_block(fd, 0);
 if (err < 0)
  goto out;

 return fd;
 out:
 close(fd);
 return err;
}
