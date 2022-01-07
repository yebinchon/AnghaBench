
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sin6_family; } ;
struct TYPE_6__ {TYPE_2__ address6; } ;
struct TYPE_8__ {int is_internal; TYPE_1__ address; } ;
typedef TYPE_3__ uv_interface_address_t ;


 scalar_t__ AF_INET6 ;
 int uv_free_interface_addresses (TYPE_3__*,int) ;
 scalar_t__ uv_interface_addresses (TYPE_3__**,int*) ;

__attribute__((used)) static int can_ipv6_external(void) {
  uv_interface_address_t* addr;
  int supported;
  int count;
  int i;

  if (uv_interface_addresses(&addr, &count))
    return 0;

  supported = 0;
  for (i = 0; supported == 0 && i < count; i += 1)
    supported = (AF_INET6 == addr[i].address.address6.sin6_family &&
                 !addr[i].is_internal);

  uv_free_interface_addresses(addr, count);
  return supported;
}
