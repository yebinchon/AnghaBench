
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sockaddr_context {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;


 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int unix_sockaddr_cleanup (struct unix_sockaddr_context*) ;
 scalar_t__ unix_sockaddr_init (struct sockaddr_un*,char const*,struct unix_sockaddr_context*) ;
 int unix_stream_socket () ;

int unix_stream_connect(const char *path)
{
 int fd, saved_errno;
 struct sockaddr_un sa;
 struct unix_sockaddr_context ctx;

 if (unix_sockaddr_init(&sa, path, &ctx) < 0)
  return -1;
 fd = unix_stream_socket();
 if (connect(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
  goto fail;
 unix_sockaddr_cleanup(&ctx);
 return fd;

fail:
 saved_errno = errno;
 unix_sockaddr_cleanup(&ctx);
 close(fd);
 errno = saved_errno;
 return -1;
}
