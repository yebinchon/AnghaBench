
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 struct evdns_base* current_base ;
 int evdns_base_load_hosts_impl (struct evdns_base*,char const*) ;

int
evdns_base_load_hosts(struct evdns_base *base, const char *hosts_fname)
{
 int res;
 if (!base)
  base = current_base;
 EVDNS_LOCK(base);
 res = evdns_base_load_hosts_impl(base, hosts_fname);
 EVDNS_UNLOCK(base);
 return res;
}
