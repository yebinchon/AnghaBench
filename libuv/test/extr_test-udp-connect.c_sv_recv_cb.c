
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
 int client ;
 int close_cb ;
 scalar_t__ memcmp (char*,int ,int) ;
 int server ;
 int sv_recv_cb_called ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void sv_recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* rcvbuf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  if (nread > 0) {
    ASSERT(nread == 4);
    ASSERT(addr != ((void*)0));
    ASSERT(memcmp("EXIT", rcvbuf->base, nread) == 0);
    if (++sv_recv_cb_called == 4) {
      uv_close((uv_handle_t*) &server, close_cb);
      uv_close((uv_handle_t*) &client, close_cb);
    }
  }
}
