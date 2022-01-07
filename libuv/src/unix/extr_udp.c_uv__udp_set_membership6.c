
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {TYPE_1__ io_watcher; } ;
typedef TYPE_2__ uv_udp_t ;
typedef int uv_membership ;
struct sockaddr_in6 {int sin6_addr; scalar_t__ sin6_scope_id; } ;
struct ipv6_mreq {int ipv6mr_multiaddr; scalar_t__ ipv6mr_interface; } ;
typedef int mreq ;


 scalar_t__ ENXIO ;
 int IPPROTO_IPV6 ;
 int IPV6_ADD_MEMBERSHIP ;
 int IPV6_DROP_MEMBERSHIP ;
 int UV_EINVAL ;
 int UV_ENODEV ;


 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int memset (struct ipv6_mreq*,int ,int) ;
 scalar_t__ setsockopt (int ,int ,int,struct ipv6_mreq*,int) ;
 scalar_t__ uv_ip6_addr (char const*,int ,struct sockaddr_in6*) ;

__attribute__((used)) static int uv__udp_set_membership6(uv_udp_t* handle,
                                   const struct sockaddr_in6* multicast_addr,
                                   const char* interface_addr,
                                   uv_membership membership) {
  int optname;
  struct ipv6_mreq mreq;
  struct sockaddr_in6 addr6;

  memset(&mreq, 0, sizeof mreq);

  if (interface_addr) {
    if (uv_ip6_addr(interface_addr, 0, &addr6))
      return UV_EINVAL;
    mreq.ipv6mr_interface = addr6.sin6_scope_id;
  } else {
    mreq.ipv6mr_interface = 0;
  }

  mreq.ipv6mr_multiaddr = multicast_addr->sin6_addr;

  switch (membership) {
  case 129:
    optname = IPV6_ADD_MEMBERSHIP;
    break;
  case 128:
    optname = IPV6_DROP_MEMBERSHIP;
    break;
  default:
    return UV_EINVAL;
  }

  if (setsockopt(handle->io_watcher.fd,
                 IPPROTO_IPV6,
                 optname,
                 &mreq,
                 sizeof(mreq))) {




    return UV__ERR(errno);
  }

  return 0;
}
