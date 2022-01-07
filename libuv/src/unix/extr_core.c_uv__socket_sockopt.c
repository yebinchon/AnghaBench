
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ io_watcher; } ;
typedef TYPE_2__ uv_udp_t ;
typedef int uv_stream_t ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_3__ uv_handle_t ;
typedef int socklen_t ;


 int SOL_SOCKET ;
 int UV_EINVAL ;
 int UV_ENOTSUP ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TCP ;
 scalar_t__ UV_UDP ;
 int UV__ERR (int ) ;
 int errno ;
 int getsockopt (int,int ,int,int*,int*) ;
 int setsockopt (int,int ,int,void const*,int) ;
 int uv__stream_fd (int *) ;

int uv__socket_sockopt(uv_handle_t* handle, int optname, int* value) {
  int r;
  int fd;
  socklen_t len;

  if (handle == ((void*)0) || value == ((void*)0))
    return UV_EINVAL;

  if (handle->type == UV_TCP || handle->type == UV_NAMED_PIPE)
    fd = uv__stream_fd((uv_stream_t*) handle);
  else if (handle->type == UV_UDP)
    fd = ((uv_udp_t *) handle)->io_watcher.fd;
  else
    return UV_ENOTSUP;

  len = sizeof(*value);

  if (*value == 0)
    r = getsockopt(fd, SOL_SOCKET, optname, value, &len);
  else
    r = setsockopt(fd, SOL_SOCKET, optname, (const void*) value, len);

  if (r < 0)
    return UV__ERR(errno);

  return 0;
}
