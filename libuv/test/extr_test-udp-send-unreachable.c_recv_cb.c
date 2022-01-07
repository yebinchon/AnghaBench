
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int *) ;
 int recv_cb_called ;

__attribute__((used)) static void recv_cb(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* rcvbuf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  CHECK_HANDLE(handle);
  recv_cb_called++;

  if (nread < 0) {
    ASSERT(0 && "unexpected error");
  } else if (nread == 0) {

    ASSERT(addr == ((void*)0));
  } else {
    ASSERT(addr != ((void*)0));
  }
}
