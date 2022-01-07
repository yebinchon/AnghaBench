
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sockaddr_context {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;


 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 scalar_t__ listen (int,int) ;
 int unix_sockaddr_cleanup (struct unix_sockaddr_context*) ;
 scalar_t__ unix_sockaddr_init (struct sockaddr_un*,char const*,struct unix_sockaddr_context*) ;
 int unix_stream_socket () ;
 int unlink (char const*) ;

int unix_stream_listen(const char *path)
{
 int fd, saved_errno;
 struct sockaddr_un sa;
 struct unix_sockaddr_context ctx;

 unlink(path);

 if (unix_sockaddr_init(&sa, path, &ctx) < 0)
  return -1;
 fd = unix_stream_socket();

 if (bind(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
  goto fail;

 if (listen(fd, 5) < 0)
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
