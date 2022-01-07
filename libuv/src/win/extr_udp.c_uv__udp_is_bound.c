
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 scalar_t__ uv_udp_getsockname (int *,struct sockaddr*,int*) ;

int uv__udp_is_bound(uv_udp_t* handle) {
  struct sockaddr_storage addr;
  int addrlen;

  addrlen = sizeof(addr);
  if (uv_udp_getsockname(handle, (struct sockaddr*) &addr, &addrlen) != 0)
    return 0;

  return addrlen > 0;
}
