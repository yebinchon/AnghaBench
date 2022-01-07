
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int ai_flags; scalar_t__ ai_family; } ;


 int EVUTIL_AI_ADDRCONFIG ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNSPEC ;
 int evutil_check_interfaces () ;
 scalar_t__ had_ipv4_address ;
 scalar_t__ had_ipv6_address ;

void
evutil_adjust_hints_for_addrconfig_(struct evutil_addrinfo *hints)
{
 if (!(hints->ai_flags & EVUTIL_AI_ADDRCONFIG))
  return;
 if (hints->ai_family != PF_UNSPEC)
  return;
 evutil_check_interfaces();
 if (had_ipv4_address && !had_ipv6_address) {
  hints->ai_family = PF_INET;
 } else if (!had_ipv4_address && had_ipv6_address) {
  hints->ai_family = PF_INET6;
 }
}
