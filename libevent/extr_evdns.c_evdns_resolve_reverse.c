
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int evdns_callback_type ;


 int current_base ;
 scalar_t__ evdns_base_resolve_reverse (int ,struct in_addr const*,int,int ,void*) ;

int evdns_resolve_reverse(const struct in_addr *in, int flags, evdns_callback_type callback, void *ptr) {
 return evdns_base_resolve_reverse(current_base, in, flags, callback, ptr)
  ? 0 : -1;
}
