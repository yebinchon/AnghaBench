
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct evdns_request {int * current_req; } ;
struct evdns_base {int dummy; } ;
typedef int evdns_callback_type ;


 int DNS_QUERY_NO_SEARCH ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_DEBUG ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int TYPE_AAAA ;
 int log (int ,char*,char const*) ;
 struct evdns_request* mm_calloc (int,int) ;
 int mm_free (struct evdns_request*) ;
 struct request* request_new (struct evdns_base*,struct evdns_request*,int ,char const*,int,int ,void*) ;
 int request_submit (struct request*) ;
 int search_request_new (struct evdns_base*,struct evdns_request*,int ,char const*,int,int ,void*) ;

struct evdns_request *
evdns_base_resolve_ipv6(struct evdns_base *base,
    const char *name, int flags,
    evdns_callback_type callback, void *ptr)
{
 struct evdns_request *handle;
 struct request *req;
 log(EVDNS_LOG_DEBUG, "Resolve requested for %s", name);
 handle = mm_calloc(1, sizeof(*handle));
 if (handle == ((void*)0))
  return ((void*)0);
 EVDNS_LOCK(base);
 if (flags & DNS_QUERY_NO_SEARCH) {
  req = request_new(base, handle, TYPE_AAAA, name, flags,
      callback, ptr);
  if (req)
   request_submit(req);
 } else {
  search_request_new(base, handle, TYPE_AAAA, name, flags,
      callback, ptr);
 }
 if (handle->current_req == ((void*)0)) {
  mm_free(handle);
  handle = ((void*)0);
 }
 EVDNS_UNLOCK(base);
 return handle;
}
