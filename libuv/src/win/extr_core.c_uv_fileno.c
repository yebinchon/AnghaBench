
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int socket; } ;
typedef TYPE_1__ uv_udp_t ;
struct TYPE_10__ {scalar_t__ handle; } ;
typedef TYPE_2__ uv_tty_t ;
struct TYPE_11__ {int socket; } ;
typedef TYPE_3__ uv_tcp_t ;
struct TYPE_12__ {int socket; } ;
typedef TYPE_4__ uv_poll_t ;
struct TYPE_13__ {scalar_t__ handle; } ;
typedef TYPE_5__ uv_pipe_t ;
typedef scalar_t__ uv_os_fd_t ;
struct TYPE_14__ {int type; } ;
typedef TYPE_6__ uv_handle_t ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int UV_EBADF ;
 int UV_EINVAL ;





 scalar_t__ uv_is_closing (TYPE_6__ const*) ;

int uv_fileno(const uv_handle_t* handle, uv_os_fd_t* fd) {
  uv_os_fd_t fd_out;

  switch (handle->type) {
  case 130:
    fd_out = (uv_os_fd_t)((uv_tcp_t*) handle)->socket;
    break;

  case 132:
    fd_out = ((uv_pipe_t*) handle)->handle;
    break;

  case 129:
    fd_out = ((uv_tty_t*) handle)->handle;
    break;

  case 128:
    fd_out = (uv_os_fd_t)((uv_udp_t*) handle)->socket;
    break;

  case 131:
    fd_out = (uv_os_fd_t)((uv_poll_t*) handle)->socket;
    break;

  default:
    return UV_EINVAL;
  }

  if (uv_is_closing(handle) || fd_out == INVALID_HANDLE_VALUE)
    return UV_EBADF;

  *fd = fd_out;
  return 0;
}
