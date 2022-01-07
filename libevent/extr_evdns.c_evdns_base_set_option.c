
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int DNS_OPTIONS_ALL ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_base_set_option_impl (struct evdns_base*,char const*,char const*,int ) ;

int
evdns_base_set_option(struct evdns_base *base,
    const char *option, const char *val)
{
 int res;
 EVDNS_LOCK(base);
 res = evdns_base_set_option_impl(base, option, val, DNS_OPTIONS_ALL);
 EVDNS_UNLOCK(base);
 return res;
}
