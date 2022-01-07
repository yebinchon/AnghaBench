
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_buf_t ;
struct sockaddr {int dummy; } ;


 int uv__udp_check_before_send (int *,struct sockaddr const*) ;
 int uv__udp_try_send (int *,int const*,unsigned int,struct sockaddr const*,int) ;

int uv_udp_try_send(uv_udp_t* handle,
                    const uv_buf_t bufs[],
                    unsigned int nbufs,
                    const struct sockaddr* addr) {
  int addrlen;

  addrlen = uv__udp_check_before_send(handle, addr);
  if (addrlen < 0)
    return addrlen;

  return uv__udp_try_send(handle, bufs, nbufs, addr, addrlen);
}
