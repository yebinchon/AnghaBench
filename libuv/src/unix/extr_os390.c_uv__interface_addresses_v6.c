
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_9__ {struct sockaddr_in address4; struct sockaddr_in6 address6; } ;
struct TYPE_11__ {int is_internal; int phys_addr; TYPE_1__ address; int name; } ;
typedef TYPE_3__ uv_interface_address_t ;
struct TYPE_12__ {int __nif6h_version; int __nif6h_buflen; int __nif6h_entrylen; scalar_t__ __nif6h_buffer; } ;
typedef TYPE_4__ __net_ifconf6header_t ;
struct TYPE_10__ {scalar_t__ sin6_family; } ;
struct TYPE_13__ {int __nif6e_flags; TYPE_2__ __nif6e_addr; int __nif6e_name; } ;
typedef TYPE_5__ __net_ifconf6entry_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IPPROTO_IP ;
 int SIOCGIFCONF6 ;
 int SOCK_DGRAM ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int _NIF6E_FLAGS_LOOPBACK ;
 int _NIF6E_FLAGS_ON_LINK_ACTIVE ;
 int errno ;
 int ioctl (int,int ,TYPE_4__*) ;
 int memset (int ,int ,int) ;
 int socket (scalar_t__,int ,int ) ;
 scalar_t__ uv__calloc (int,int) ;
 int uv__close (int) ;
 TYPE_3__* uv__malloc (int) ;
 int uv__strdup (int ) ;

__attribute__((used)) static int uv__interface_addresses_v6(uv_interface_address_t** addresses,
                                      int* count) {
  uv_interface_address_t* address;
  int sockfd;
  int maxsize;
  __net_ifconf6header_t ifc;
  __net_ifconf6entry_t* ifr;
  __net_ifconf6entry_t* p;
  __net_ifconf6entry_t flg;

  *count = 0;

  maxsize = 16384;

  if (0 > (sockfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP)))
    return UV__ERR(errno);

  ifc.__nif6h_version = 1;
  ifc.__nif6h_buflen = maxsize;
  ifc.__nif6h_buffer = uv__calloc(1, maxsize);;

  if (ioctl(sockfd, SIOCGIFCONF6, &ifc) == -1) {
    uv__close(sockfd);
    return UV__ERR(errno);
  }


  *count = 0;
  ifr = (__net_ifconf6entry_t*)(ifc.__nif6h_buffer);
  while ((char*)ifr < (char*)ifc.__nif6h_buffer + ifc.__nif6h_buflen) {
    p = ifr;
    ifr = (__net_ifconf6entry_t*)((char*)ifr + ifc.__nif6h_entrylen);

    if (!(p->__nif6e_addr.sin6_family == AF_INET6 ||
          p->__nif6e_addr.sin6_family == AF_INET))
      continue;

    if (!(p->__nif6e_flags & _NIF6E_FLAGS_ON_LINK_ACTIVE))
      continue;

    ++(*count);
  }


  *addresses = uv__malloc(*count * sizeof(uv_interface_address_t));
  if (!(*addresses)) {
    uv__close(sockfd);
    return UV_ENOMEM;
  }
  address = *addresses;

  ifr = (__net_ifconf6entry_t*)(ifc.__nif6h_buffer);
  while ((char*)ifr < (char*)ifc.__nif6h_buffer + ifc.__nif6h_buflen) {
    p = ifr;
    ifr = (__net_ifconf6entry_t*)((char*)ifr + ifc.__nif6h_entrylen);

    if (!(p->__nif6e_addr.sin6_family == AF_INET6 ||
          p->__nif6e_addr.sin6_family == AF_INET))
      continue;

    if (!(p->__nif6e_flags & _NIF6E_FLAGS_ON_LINK_ACTIVE))
      continue;



    address->name = uv__strdup(p->__nif6e_name);

    if (p->__nif6e_addr.sin6_family == AF_INET6)
      address->address.address6 = *((struct sockaddr_in6*) &p->__nif6e_addr);
    else
      address->address.address4 = *((struct sockaddr_in*) &p->__nif6e_addr);



    address->is_internal = flg.__nif6e_flags & _NIF6E_FLAGS_LOOPBACK ? 1 : 0;
    memset(address->phys_addr, 0, sizeof(address->phys_addr));
    address++;
  }

  uv__close(sockfd);
  return 0;
}
