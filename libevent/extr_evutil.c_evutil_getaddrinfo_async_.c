
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int dummy; } ;
struct evdns_getaddrinfo_request {int dummy; } ;
struct evdns_base {int dummy; } ;


 struct evdns_getaddrinfo_request* evdns_getaddrinfo_impl (struct evdns_base*,char const*,char const*,struct evutil_addrinfo const*,void (*) (int,struct evutil_addrinfo*,void*),void*) ;
 int evutil_getaddrinfo (char const*,char const*,struct evutil_addrinfo const*,struct evutil_addrinfo**) ;

struct evdns_getaddrinfo_request *evutil_getaddrinfo_async_(
    struct evdns_base *dns_base,
    const char *nodename, const char *servname,
    const struct evutil_addrinfo *hints_in,
    void (*cb)(int, struct evutil_addrinfo *, void *), void *arg)
{
 if (dns_base && evdns_getaddrinfo_impl) {
  return evdns_getaddrinfo_impl(
   dns_base, nodename, servname, hints_in, cb, arg);
 } else {
  struct evutil_addrinfo *ai=((void*)0);
  int err;
  err = evutil_getaddrinfo(nodename, servname, hints_in, &ai);
  cb(err, ai, arg);
  return ((void*)0);
 }
}
