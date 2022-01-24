#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_9__ {struct sockaddr_in address4; struct sockaddr_in6 address6; } ;
struct TYPE_11__ {int is_internal; int /*<<< orphan*/  phys_addr; TYPE_1__ address; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ uv_interface_address_t ;
struct TYPE_12__ {int __nif6h_version; int __nif6h_buflen; int __nif6h_entrylen; scalar_t__ __nif6h_buffer; } ;
typedef  TYPE_4__ __net_ifconf6header_t ;
struct TYPE_10__ {scalar_t__ sin6_family; } ;
struct TYPE_13__ {int __nif6e_flags; TYPE_2__ __nif6e_addr; int /*<<< orphan*/  __nif6e_name; } ;
typedef  TYPE_5__ __net_ifconf6entry_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  SIOCGIFCONF6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int UV_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int _NIF6E_FLAGS_LOOPBACK ; 
 int _NIF6E_FLAGS_ON_LINK_ACTIVE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(uv_interface_address_t** addresses,
                                      int* count) {
  uv_interface_address_t* address;
  int sockfd;
  int maxsize;
  __net_ifconf6header_t ifc;
  __net_ifconf6entry_t* ifr;
  __net_ifconf6entry_t* p;
  __net_ifconf6entry_t flg;

  *count = 0;
  /* Assume maximum buffer size allowable */
  maxsize = 16384;

  if (0 > (sockfd = FUNC3(AF_INET, SOCK_DGRAM, IPPROTO_IP)))
    return FUNC0(errno);

  ifc.__nif6h_version = 1;
  ifc.__nif6h_buflen = maxsize;
  ifc.__nif6h_buffer = FUNC4(1, maxsize);;

  if (FUNC1(sockfd, SIOCGIFCONF6, &ifc) == -1) {
    FUNC5(sockfd);
    return FUNC0(errno);
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

  /* Alloc the return interface structs */
  *addresses = FUNC6(*count * sizeof(uv_interface_address_t));
  if (!(*addresses)) {
    FUNC5(sockfd);
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

    /* All conditions above must match count loop */

    address->name = FUNC7(p->__nif6e_name);

    if (p->__nif6e_addr.sin6_family == AF_INET6)
      address->address.address6 = *((struct sockaddr_in6*) &p->__nif6e_addr);
    else
      address->address.address4 = *((struct sockaddr_in*) &p->__nif6e_addr);

    /* TODO: Retrieve netmask using SIOCGIFNETMASK ioctl */

    address->is_internal = flg.__nif6e_flags & _NIF6E_FLAGS_LOOPBACK ? 1 : 0;
    FUNC2(address->phys_addr, 0, sizeof(address->phys_addr));
    address++;
  }

  FUNC5(sockfd);
  return 0;
}