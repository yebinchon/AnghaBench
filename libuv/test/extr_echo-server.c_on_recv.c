
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_udp_send_t ;
typedef int uv_buf_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ AF_INET ;
 int ASSERT (int) ;
 int * malloc (int) ;
 int on_send ;
 scalar_t__ uv_udp_send (int *,int *,int *,int,struct sockaddr const*,int ) ;

__attribute__((used)) static void on_recv(uv_udp_t* handle,
                    ssize_t nread,
                    const uv_buf_t* rcvbuf,
                    const struct sockaddr* addr,
                    unsigned flags) {
  uv_udp_send_t* req;
  uv_buf_t sndbuf;

  ASSERT(nread > 0);
  ASSERT(addr->sa_family == AF_INET);

  req = malloc(sizeof(*req));
  ASSERT(req != ((void*)0));

  sndbuf = *rcvbuf;
  ASSERT(0 == uv_udp_send(req, handle, &sndbuf, 1, addr, on_send));
}
