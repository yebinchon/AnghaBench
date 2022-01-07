
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

__attribute__((used)) static void ipv6_recv_ok(uv_udp_t* handle,
                         ssize_t nread,
                         const uv_buf_t* buf,
                         const struct sockaddr* addr,
                         unsigned flags) {
  CHECK_HANDLE(handle);
  ASSERT(nread >= 0);

  if (nread)
    recv_cb_called++;
}
