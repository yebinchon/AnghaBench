
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_requests_pump_waiting_queue (struct evdns_base*) ;

int
evdns_base_resume(struct evdns_base *base)
{
 EVDNS_LOCK(base);
 evdns_requests_pump_waiting_queue(base);
 EVDNS_UNLOCK(base);

 return 0;
}
