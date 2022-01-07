
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef struct evutil_addrinfo {int ai_flags; scalar_t__ ai_family; } const evutil_addrinfo ;
struct TYPE_8__ {TYPE_2__* r; int type; } ;
struct evdns_getaddrinfo_request {TYPE_3__ ipv6_request; TYPE_3__ ipv4_request; int timeout; int cname_result; struct evdns_base* evdns_base; void* user_data; int (* user_cb ) (int,struct evutil_addrinfo const*,void*) ;int port; struct evutil_addrinfo const hints; } ;
struct evdns_base {int event_base; } ;
typedef int hints ;
typedef int (* evdns_getaddrinfo_cb ) (int,struct evutil_addrinfo const*,void*) ;
typedef int ev_uint16_t ;
struct TYPE_7__ {TYPE_1__* current_req; } ;
struct TYPE_6__ {int * put_cname_in_ptr; } ;


 int DNS_IPv4_A ;
 int DNS_IPv6_AAAA ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_DEBUG ;
 int EVDNS_LOG_WARN ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int EVUTIL_AI_CANONNAME ;
 int EVUTIL_AI_NUMERICHOST ;
 int EVUTIL_EAI_FAIL ;
 int EVUTIL_EAI_MEMORY ;
 int EVUTIL_EAI_NEED_RESOLVE ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_UNSPEC ;
 struct evdns_base* current_base ;
 TYPE_2__* evdns_base_resolve_ipv4 (struct evdns_base*,char const*,int ,int ,TYPE_3__*) ;
 TYPE_2__* evdns_base_resolve_ipv6 (struct evdns_base*,char const*,int ,int ,TYPE_3__*) ;
 int evdns_getaddrinfo_fromhosts (struct evdns_base*,char const*,struct evutil_addrinfo const*,int,struct evutil_addrinfo const**) ;
 int evdns_getaddrinfo_gotresolve ;
 int evdns_getaddrinfo_timeout_cb ;
 int evtimer_assign (int *,int ,int ,struct evdns_getaddrinfo_request*) ;
 int evutil_adjust_hints_for_addrconfig_ (struct evutil_addrinfo const*) ;
 int evutil_getaddrinfo (char const*,char const*,struct evutil_addrinfo const*,struct evutil_addrinfo const**) ;
 int evutil_getaddrinfo_common_ (char const*,char const*,struct evutil_addrinfo const*,struct evutil_addrinfo const**,int*) ;
 int log (int ,char*,...) ;
 int memcpy (struct evutil_addrinfo const*,struct evutil_addrinfo const*,int) ;
 int memset (struct evutil_addrinfo const*,int ,int) ;
 struct evdns_getaddrinfo_request* mm_calloc (int,int) ;
 int mm_free (struct evdns_getaddrinfo_request*) ;

struct evdns_getaddrinfo_request *
evdns_getaddrinfo(struct evdns_base *dns_base,
    const char *nodename, const char *servname,
    const struct evutil_addrinfo *hints_in,
    evdns_getaddrinfo_cb cb, void *arg)
{
 struct evdns_getaddrinfo_request *data;
 struct evutil_addrinfo hints;
 struct evutil_addrinfo *res = ((void*)0);
 int err;
 int port = 0;
 int want_cname = 0;
 int started = 0;

 if (!dns_base) {
  dns_base = current_base;
  if (!dns_base) {
   log(EVDNS_LOG_WARN,
       "Call to getaddrinfo_async with no "
       "evdns_base configured.");
   cb(EVUTIL_EAI_FAIL, ((void*)0), arg);
   return ((void*)0);
  }
 }


 if ((hints_in && (hints_in->ai_flags & EVUTIL_AI_NUMERICHOST))) {
  res = ((void*)0);
  err = evutil_getaddrinfo(nodename, servname, hints_in, &res);
  cb(err, res, arg);
  return ((void*)0);
 }

 if (hints_in) {
  memcpy(&hints, hints_in, sizeof(hints));
 } else {
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = PF_UNSPEC;
 }

 evutil_adjust_hints_for_addrconfig_(&hints);






 err = evutil_getaddrinfo_common_(nodename, servname, &hints, &res, &port);
 if (err != EVUTIL_EAI_NEED_RESOLVE) {
  cb(err, res, arg);
  return ((void*)0);
 }


 if (!evdns_getaddrinfo_fromhosts(dns_base, nodename, &hints, port, &res)) {
  cb(0, res, arg);
  return ((void*)0);
 }




 data = mm_calloc(1,sizeof(struct evdns_getaddrinfo_request));
 if (!data) {
  cb(EVUTIL_EAI_MEMORY, ((void*)0), arg);
  return ((void*)0);
 }

 memcpy(&data->hints, &hints, sizeof(data->hints));
 data->port = (ev_uint16_t)port;
 data->ipv4_request.type = DNS_IPv4_A;
 data->ipv6_request.type = DNS_IPv6_AAAA;
 data->user_cb = cb;
 data->user_data = arg;
 data->evdns_base = dns_base;

 want_cname = (hints.ai_flags & EVUTIL_AI_CANONNAME);
 EVDNS_LOCK(dns_base);

 if (hints.ai_family != PF_INET6) {
  log(EVDNS_LOG_DEBUG, "Sending request for %s on ipv4 as %p",
      nodename, &data->ipv4_request);

  data->ipv4_request.r = evdns_base_resolve_ipv4(dns_base,
      nodename, 0, evdns_getaddrinfo_gotresolve,
      &data->ipv4_request);
  if (want_cname && data->ipv4_request.r)
   data->ipv4_request.r->current_req->put_cname_in_ptr =
       &data->cname_result;
 }
 if (hints.ai_family != PF_INET) {
  log(EVDNS_LOG_DEBUG, "Sending request for %s on ipv6 as %p",
      nodename, &data->ipv6_request);

  data->ipv6_request.r = evdns_base_resolve_ipv6(dns_base,
      nodename, 0, evdns_getaddrinfo_gotresolve,
      &data->ipv6_request);
  if (want_cname && data->ipv6_request.r)
   data->ipv6_request.r->current_req->put_cname_in_ptr =
       &data->cname_result;
 }

 evtimer_assign(&data->timeout, dns_base->event_base,
     evdns_getaddrinfo_timeout_cb, data);

 started = (data->ipv4_request.r || data->ipv6_request.r);

 EVDNS_UNLOCK(dns_base);

 if (started) {
  return data;
 } else {
  mm_free(data);
  cb(EVUTIL_EAI_FAIL, ((void*)0), arg);
  return ((void*)0);
 }
}
