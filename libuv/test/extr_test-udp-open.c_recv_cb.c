
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int close_cb ;
 scalar_t__ memcmp (char*,int ,int) ;
 int uv_close (int *,int ) ;
 int uv_udp_recv_stop (int *) ;

__attribute__((used)) static void recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  int r;

  if (nread < 0) {
    ASSERT(0 && "unexpected error");
  }

  if (nread == 0) {

    ASSERT(addr == ((void*)0));
    return;
  }

  ASSERT(flags == 0);

  ASSERT(addr != ((void*)0));
  ASSERT(nread == 4);
  ASSERT(memcmp("PING", buf->base, nread) == 0);

  r = uv_udp_recv_stop(handle);
  ASSERT(r == 0);

  uv_close((uv_handle_t*) handle, close_cb);
}
