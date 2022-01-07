
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef int ev_socklen_t ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int EVUTIL_ASSERT (struct evdns_base*) ;
 int evdns_nameserver_add_impl_ (struct evdns_base*,struct sockaddr const*,int ) ;

int
evdns_base_nameserver_sockaddr_add(struct evdns_base *base,
    const struct sockaddr *sa, ev_socklen_t len, unsigned flags)
{
 int res;
 EVUTIL_ASSERT(base);
 EVDNS_LOCK(base);
 res = evdns_nameserver_add_impl_(base, sa, len);
 EVDNS_UNLOCK(base);
 return res;
}
