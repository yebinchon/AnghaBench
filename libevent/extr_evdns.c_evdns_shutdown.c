
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 struct evdns_base* current_base ;
 int evdns_base_free (struct evdns_base*,int) ;
 int * evdns_log_fn ;

void
evdns_shutdown(int fail_requests)
{
 if (current_base) {
  struct evdns_base *b = current_base;
  current_base = ((void*)0);
  evdns_base_free(b, fail_requests);
 }
 evdns_log_fn = ((void*)0);
}
