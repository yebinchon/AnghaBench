
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle_queue; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_loop_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int QUEUE_REMOVE (int *) ;
 int UV_EINVAL ;
 int UV_TCP ;
 int maybe_new_socket (TYPE_1__*,int,int ) ;
 int uv__stream_init (int *,int *,int ) ;

int uv_tcp_init_ex(uv_loop_t* loop, uv_tcp_t* tcp, unsigned int flags) {
  int domain;


  domain = flags & 0xFF;
  if (domain != AF_INET && domain != AF_INET6 && domain != AF_UNSPEC)
    return UV_EINVAL;

  if (flags & ~0xFF)
    return UV_EINVAL;

  uv__stream_init(loop, (uv_stream_t*)tcp, UV_TCP);





  if (domain != AF_UNSPEC) {
    int err = maybe_new_socket(tcp, domain, 0);
    if (err) {
      QUEUE_REMOVE(&tcp->handle_queue);
      return err;
    }
  }

  return 0;
}
