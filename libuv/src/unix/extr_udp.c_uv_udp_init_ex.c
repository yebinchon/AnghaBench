
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_completed_queue; int write_queue; int io_watcher; scalar_t__ send_queue_count; scalar_t__ send_queue_size; int * recv_cb; int * alloc_cb; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int QUEUE_INIT (int *) ;
 int SOCK_DGRAM ;
 int UV_EINVAL ;
 int UV_UDP ;
 int uv__handle_init (int *,int *,int ) ;
 int uv__io_init (int *,int ,int) ;
 int uv__socket (int,int ,int ) ;
 int uv__udp_io ;

int uv_udp_init_ex(uv_loop_t* loop, uv_udp_t* handle, unsigned int flags) {
  int domain;
  int err;
  int fd;


  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  if (domain != AF_UNSPEC) {
    err = uv__socket(domain, SOCK_DGRAM, 0);
    if (err < 0)
      return err;
    fd = err;
  } else {
    fd = -1;
  }

  uv__handle_init(loop, (uv_handle_t*)handle, UV_UDP);
  handle->alloc_cb = ((void*)0);
  handle->recv_cb = ((void*)0);
  handle->send_queue_size = 0;
  handle->send_queue_count = 0;
  uv__io_init(&handle->io_watcher, uv__udp_io, fd);
  QUEUE_INIT(&handle->write_queue);
  QUEUE_INIT(&handle->write_completed_queue);

  return 0;
}
