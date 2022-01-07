
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
 int CHECK_HANDLE (int *) ;
 int cl_recv_cb_called ;
 int close_cb ;
 int memcmp (char*,int ,int) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void cl_recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  CHECK_HANDLE(handle);
  ASSERT(flags == 0);

  if (nread < 0) {
    ASSERT(0 && "unexpected error");
  }

  if (nread == 0) {

    ASSERT(addr == ((void*)0));
    return;
  }

  ASSERT(addr != ((void*)0));
  ASSERT(nread == 4);
  ASSERT(!memcmp("PONG", buf->base, nread));

  cl_recv_cb_called++;

  uv_close((uv_handle_t*) handle, close_cb);
}
