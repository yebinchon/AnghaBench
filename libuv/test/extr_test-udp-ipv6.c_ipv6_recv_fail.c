
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;


 int ASSERT (int) ;

__attribute__((used)) static void ipv6_recv_fail(uv_udp_t* handle,
                           ssize_t nread,
                           const uv_buf_t* buf,
                           const struct sockaddr* addr,
                           unsigned flags) {
  ASSERT(0 && "this function should not have been called");
}
