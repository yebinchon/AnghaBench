
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_udp_send_t ;
typedef int uv_udp_send_cb ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;


 int uv__udp_check_before_send (int *,struct sockaddr const*) ;
 int uv__udp_send (int *,int *,int const*,unsigned int,struct sockaddr const*,int,int ) ;

int uv_udp_send(uv_udp_send_t* req,
                uv_udp_t* handle,
                const uv_buf_t bufs[],
                unsigned int nbufs,
                const struct sockaddr* addr,
                uv_udp_send_cb send_cb) {
  int addrlen;

  addrlen = uv__udp_check_before_send(handle, addr);
  if (addrlen < 0)
    return addrlen;

  return uv__udp_send(req, handle, bufs, nbufs, addr, addrlen, send_cb);
}
