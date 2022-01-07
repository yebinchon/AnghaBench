
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* netmask4; void* netmask6; } ;
struct TYPE_8__ {void* address4; void* address6; } ;
struct TYPE_12__ {char* name; int is_internal; int phys_addr; TYPE_2__ netmask; TYPE_1__ address; } ;
typedef TYPE_5__ uv_interface_address_t ;
struct sockaddr_ll {int sll_addr; } ;
typedef void* sockaddr_in6 ;
typedef void* sockaddr_in ;
struct ifaddrs {int ifa_flags; TYPE_4__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; TYPE_3__* ifa_netmask; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
struct TYPE_10__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int IFF_LOOPBACK ;
 int UV_ENOMEM ;
 int UV_ENOSYS ;
 int UV__ERR (int ) ;
 int UV__EXCLUDE_IFADDR ;
 int UV__EXCLUDE_IFPHYS ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int memcpy (int ,int ,int) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char*,int ,size_t) ;
 TYPE_5__* uv__calloc (int,int) ;
 scalar_t__ uv__ifaddr_exclude (struct ifaddrs*,int ) ;
 char* uv__strdup (int ) ;

int uv_interface_addresses(uv_interface_address_t** addresses, int* count) {

  *count = 0;
  *addresses = ((void*)0);
  return UV_ENOSYS;
}
