
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_10__ {TYPE_1__ io_watcher; } ;
typedef TYPE_3__ uv_udp_t ;
typedef int uv_stream_t ;
struct TYPE_9__ {int fd; } ;
struct TYPE_11__ {TYPE_2__ io_watcher; } ;
typedef TYPE_4__ uv_poll_t ;
typedef int uv_os_fd_t ;
struct TYPE_12__ {int type; } ;
typedef TYPE_5__ uv_handle_t ;


 int UV_EBADF ;
 int UV_EINVAL ;





 scalar_t__ uv__is_closing (TYPE_5__ const*) ;
 int uv__stream_fd (int *) ;

int uv_fileno(const uv_handle_t* handle, uv_os_fd_t* fd) {
  int fd_out;

  switch (handle->type) {
  case 130:
  case 132:
  case 129:
    fd_out = uv__stream_fd((uv_stream_t*) handle);
    break;

  case 128:
    fd_out = ((uv_udp_t *) handle)->io_watcher.fd;
    break;

  case 131:
    fd_out = ((uv_poll_t *) handle)->io_watcher.fd;
    break;

  default:
    return UV_EINVAL;
  }

  if (uv__is_closing(handle) || fd_out == -1)
    return UV_EBADF;

  *fd = fd_out;
  return 0;
}
