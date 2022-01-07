
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int evdns_base_free_and_unlock (struct evdns_base*,int) ;

void
evdns_base_free(struct evdns_base *base, int fail_requests)
{
 EVDNS_LOCK(base);
 evdns_base_free_and_unlock(base, fail_requests);
}
