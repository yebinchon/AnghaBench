
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_udp_send_t ;
struct TYPE_5__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int *) ;
 int * malloc (int) ;
 int memcmp (char*,int ,int) ;
 int sv_recv_cb_called ;
 int sv_send_cb ;
 TYPE_1__ uv_buf_init (char*,int) ;
 int uv_udp_recv_stop (int *) ;
 int uv_udp_send (int *,int *,TYPE_1__*,int,struct sockaddr const*,int ) ;

__attribute__((used)) static void sv_recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* rcvbuf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  uv_udp_send_t* req;
  uv_buf_t sndbuf;
  int r;

  if (nread < 0) {
    ASSERT(0 && "unexpected error");
  }

  if (nread == 0) {

    ASSERT(addr == ((void*)0));
    return;
  }

  CHECK_HANDLE(handle);
  ASSERT(flags == 0);

  ASSERT(addr != ((void*)0));
  ASSERT(nread == 4);
  ASSERT(!memcmp("PING", rcvbuf->base, nread));

  r = uv_udp_recv_stop(handle);
  ASSERT(r == 0);

  req = malloc(sizeof *req);
  ASSERT(req != ((void*)0));

  sndbuf = uv_buf_init("PONG", 4);
  r = uv_udp_send(req, handle, &sndbuf, 1, addr, sv_send_cb);
  ASSERT(r == 0);

  sv_recv_cb_called++;
}
