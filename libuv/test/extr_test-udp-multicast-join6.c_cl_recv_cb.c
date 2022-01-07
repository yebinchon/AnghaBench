
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int source_addr ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int *) ;
 int INTERFACE_ADDR ;
 int MULTICAST_ADDR ;
 int UV_JOIN_GROUP ;
 int UV_LEAVE_GROUP ;
 int cl_recv_cb_called ;
 int close_cb ;
 int do_send (int *) ;
 int memcmp (char*,int ,int) ;
 int req_ss ;
 int server ;
 int uv_close (int *,int ) ;
 int uv_ip6_name (struct sockaddr_in6 const*,char*,int) ;
 int uv_udp_set_membership (int *,int ,int ,int ) ;
 int uv_udp_set_source_membership (int *,int ,int ,char*,int ) ;

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
  ASSERT(!memcmp("PING", buf->base, nread));

  cl_recv_cb_called++;

  if (cl_recv_cb_called == 2) {

    uv_close((uv_handle_t*) &server, close_cb);
  } else {
    int r;
    char source_addr[64];

    r = uv_ip6_name((const struct sockaddr_in6*)addr, source_addr, sizeof(source_addr));
    ASSERT(r == 0);

    r = uv_udp_set_membership(&server, MULTICAST_ADDR, INTERFACE_ADDR, UV_LEAVE_GROUP);
    ASSERT(r == 0);

    r = uv_udp_set_source_membership(&server, MULTICAST_ADDR, INTERFACE_ADDR, source_addr, UV_JOIN_GROUP);
    ASSERT(r == 0);

    r = do_send(&req_ss);
    ASSERT(r == 0);
  }
}
