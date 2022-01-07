
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_entry_scope {scalar_t__ status; int* res; unsigned int scope; scalar_t__ addr; } ;
struct in6_addr {scalar_t__* s6_addr; } ;
typedef int ev_uint32_t ;


 int AF_INET6 ;
 scalar_t__ BAD ;
 int TT_BLATHER (char*) ;
 int TT_FAIL (char*) ;
 int evutil_inet_pton_scope (int ,scalar_t__,struct in6_addr*,unsigned int*) ;
 struct ipv6_entry_scope* ipv6_entries_scope ;

__attribute__((used)) static void
regress_ipv6_parse_scope(void *ptr)
{
 TT_BLATHER(("Skipping IPv6 address parsing."));

}
