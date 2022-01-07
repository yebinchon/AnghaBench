
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int event_debug (char*) ;
 int evutil_v4addr_is_local_ (int *) ;
 int evutil_v6addr_is_local_ (int *) ;
 int had_ipv4_address ;
 int had_ipv6_address ;

__attribute__((used)) static void
evutil_found_ifaddr(const struct sockaddr *sa)
{
 if (sa->sa_family == AF_INET) {
  const struct sockaddr_in *sin = (struct sockaddr_in *)sa;
  if (!evutil_v4addr_is_local_(&sin->sin_addr)) {
   event_debug(("Detected an IPv4 interface"));
   had_ipv4_address = 1;
  }
 } else if (sa->sa_family == AF_INET6) {
  const struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sa;
  if (!evutil_v6addr_is_local_(&sin6->sin6_addr)) {
   event_debug(("Detected an IPv6 interface"));
   had_ipv6_address = 1;
  }
 }
}
