
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int *) ;
 scalar_t__ UV_ENOBUFS ;
 int cl_recv_cb_called ;
 int close_cb ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void cl_recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  CHECK_HANDLE(handle);
  ASSERT(flags == 0);
  ASSERT(nread == UV_ENOBUFS);

  cl_recv_cb_called++;

  uv_close((uv_handle_t*) handle, close_cb);
}
