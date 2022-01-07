
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {char const* pipe_fname; TYPE_1__ io_watcher; int flags; } ;
typedef TYPE_2__ uv_pipe_t ;
struct sockaddr_un {int sun_family; int sun_path; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int UV_EACCES ;
 int UV_EINVAL ;
 int UV_ENOENT ;
 int UV_ENOMEM ;
 int UV_HANDLE_BOUND ;
 int UV__ERR (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 int memset (struct sockaddr_un*,int ,int) ;
 int uv__close (int) ;
 int uv__free (void*) ;
 int uv__socket (int ,int ,int ) ;
 char* uv__strdup (char const*) ;
 scalar_t__ uv__stream_fd (TYPE_2__*) ;
 int uv__strscpy (int ,char const*,int) ;

int uv_pipe_bind(uv_pipe_t* handle, const char* name) {
  struct sockaddr_un saddr;
  const char* pipe_fname;
  int sockfd;
  int err;

  pipe_fname = ((void*)0);


  if (uv__stream_fd(handle) >= 0)
    return UV_EINVAL;


  pipe_fname = uv__strdup(name);
  if (pipe_fname == ((void*)0))
    return UV_ENOMEM;


  name = ((void*)0);

  err = uv__socket(AF_UNIX, SOCK_STREAM, 0);
  if (err < 0)
    goto err_socket;
  sockfd = err;

  memset(&saddr, 0, sizeof saddr);
  uv__strscpy(saddr.sun_path, pipe_fname, sizeof(saddr.sun_path));
  saddr.sun_family = AF_UNIX;

  if (bind(sockfd, (struct sockaddr*)&saddr, sizeof saddr)) {
    err = UV__ERR(errno);

    if (err == UV_ENOENT)
      err = UV_EACCES;

    uv__close(sockfd);
    goto err_socket;
  }


  handle->flags |= UV_HANDLE_BOUND;
  handle->pipe_fname = pipe_fname;
  handle->io_watcher.fd = sockfd;
  return 0;

err_socket:
  uv__free((void*)pipe_fname);
  return err;
}
