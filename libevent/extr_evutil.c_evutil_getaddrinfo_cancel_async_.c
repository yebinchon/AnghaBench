
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_getaddrinfo_request {int dummy; } ;


 int evdns_getaddrinfo_cancel_impl (struct evdns_getaddrinfo_request*) ;

void evutil_getaddrinfo_cancel_async_(struct evdns_getaddrinfo_request *data)
{
 if (evdns_getaddrinfo_cancel_impl && data) {
  evdns_getaddrinfo_cancel_impl(data);
 }
}
