
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_membership ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;


 int UV_EINVAL ;
 int uv__udp_set_membership4 (int *,struct sockaddr_in*,char const*,int ) ;
 int uv__udp_set_membership6 (int *,struct sockaddr_in6*,char const*,int ) ;
 scalar_t__ uv_ip4_addr (char const*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_ip6_addr (char const*,int ,struct sockaddr_in6*) ;

int uv_udp_set_membership(uv_udp_t* handle,
                          const char* multicast_addr,
                          const char* interface_addr,
                          uv_membership membership) {
  struct sockaddr_in addr4;
  struct sockaddr_in6 addr6;

  if (uv_ip4_addr(multicast_addr, 0, &addr4) == 0)
    return uv__udp_set_membership4(handle, &addr4, interface_addr, membership);
  else if (uv_ip6_addr(multicast_addr, 0, &addr6) == 0)
    return uv__udp_set_membership6(handle, &addr6, interface_addr, membership);
  else
    return UV_EINVAL;
}
