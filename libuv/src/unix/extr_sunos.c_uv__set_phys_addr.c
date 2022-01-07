
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int s6_addr; } ;
struct TYPE_16__ {TYPE_5__ sin6_addr; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_13__ {scalar_t__ sin_family; TYPE_2__ sin_addr; } ;
struct TYPE_17__ {TYPE_6__ address6; TYPE_3__ address4; } ;
struct TYPE_19__ {scalar_t__* phys_addr; TYPE_7__ address; } ;
typedef TYPE_9__ uv_interface_address_t ;
struct TYPE_14__ {scalar_t__* s6_addr; } ;
struct sockaddr_in6 {TYPE_4__ sin6_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {int dummy; } ;
struct ifaddrs {scalar_t__ ifa_addr; } ;
struct TYPE_18__ {int sa_data; } ;
struct arpreq {TYPE_8__ arp_ha; int arp_pa; } ;
typedef int arpreq ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int LLADDR (struct sockaddr_dl*) ;
 int SIOCGARP ;
 int SOCK_DGRAM ;
 int UV__ERR (int ) ;
 int errno ;
 int ioctl (int,int ,char*) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (struct arpreq*,int ,int) ;
 int socket (scalar_t__,int ,int ) ;
 int uv__close (int) ;

__attribute__((used)) static int uv__set_phys_addr(uv_interface_address_t* address,
                             struct ifaddrs* ent) {

  struct sockaddr_dl* sa_addr;
  int sockfd;
  size_t i;
  struct arpreq arpreq;


  sa_addr = (struct sockaddr_dl*)(ent->ifa_addr);
  memcpy(address->phys_addr, LLADDR(sa_addr), sizeof(address->phys_addr));
  for (i = 0; i < sizeof(address->phys_addr); i++) {

    if (address->phys_addr[i] != 0)
      return 0;
  }
  memset(&arpreq, 0, sizeof(arpreq));
  if (address->address.address4.sin_family == AF_INET) {
    struct sockaddr_in* sin = ((struct sockaddr_in*)&arpreq.arp_pa);
    sin->sin_addr.s_addr = address->address.address4.sin_addr.s_addr;
  } else if (address->address.address4.sin_family == AF_INET6) {
    struct sockaddr_in6* sin = ((struct sockaddr_in6*)&arpreq.arp_pa);
    memcpy(sin->sin6_addr.s6_addr,
           address->address.address6.sin6_addr.s6_addr,
           sizeof(address->address.address6.sin6_addr.s6_addr));
  } else {
    return 0;
  }

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0)
    return UV__ERR(errno);

  if (ioctl(sockfd, SIOCGARP, (char*)&arpreq) == -1) {
    uv__close(sockfd);
    return UV__ERR(errno);
  }
  memcpy(address->phys_addr, arpreq.arp_ha.sa_data, sizeof(address->phys_addr));
  uv__close(sockfd);
  return 0;
}
