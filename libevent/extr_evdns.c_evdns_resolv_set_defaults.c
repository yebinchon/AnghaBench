
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int DNS_OPTION_NAMESERVERS ;
 int DNS_OPTION_NAMESERVERS_NO_DEFAULT ;
 int DNS_OPTION_SEARCH ;
 int evdns_base_nameserver_ip_add (struct evdns_base*,char*) ;
 int search_set_from_hostname (struct evdns_base*) ;

__attribute__((used)) static void
evdns_resolv_set_defaults(struct evdns_base *base, int flags) {
 int add_default = flags & DNS_OPTION_NAMESERVERS;
 if (flags & DNS_OPTION_NAMESERVERS_NO_DEFAULT)
  add_default = 0;


 ASSERT_LOCKED(base);
 if (flags & DNS_OPTION_SEARCH)
  search_set_from_hostname(base);
 if (add_default)
  evdns_base_nameserver_ip_add(base, "127.0.0.1");
}
