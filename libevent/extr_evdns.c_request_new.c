
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct request {int request_appended; int request_len; int trans_id; int request_type; struct evdns_request* handle; int * prev; int next; int * ns; int user_callback; void* user_pointer; scalar_t__ tx_count; int * request; struct evdns_base* base; int timeout_event; } ;
struct evdns_request {struct evdns_base* base; struct request* current_req; } ;
struct evdns_base {scalar_t__ global_requests_inflight; scalar_t__ global_max_requests_inflight; scalar_t__ global_randomize_case; int event_base; } ;
typedef int namebuf ;
typedef int evdns_callback_type ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int CLASS_INET ;
 scalar_t__ EVUTIL_ISALPHA_ (char) ;
 int evdns_request_data_build (char const*,size_t const,int const,int,int ,int *,size_t const) ;
 size_t evdns_request_len (size_t const) ;
 int evdns_request_timeout_callback ;
 int evtimer_assign (int *,int ,int ,struct request* const) ;
 int evutil_secure_rng_get_bytes (char*,size_t const) ;
 int memset (struct request* const,int ,int) ;
 int mm_free (struct request* const) ;
 struct request* mm_malloc (int) ;
 int * nameserver_pick (struct evdns_base*) ;
 int strlcpy (char*,char const*,int) ;
 size_t strlen (char const*) ;
 int transaction_id_pick (struct evdns_base*) ;

__attribute__((used)) static struct request *
request_new(struct evdns_base *base, struct evdns_request *handle, int type,
     const char *name, int flags, evdns_callback_type callback,
     void *user_ptr) {

 const char issuing_now =
     (base->global_requests_inflight < base->global_max_requests_inflight) ? 1 : 0;

 const size_t name_len = strlen(name);
 const size_t request_max_len = evdns_request_len(name_len);
 const u16 trans_id = issuing_now ? transaction_id_pick(base) : 0xffff;

 struct request *const req =
     mm_malloc(sizeof(struct request) + request_max_len);
 int rlen;
 char namebuf[256];
 (void) flags;

 ASSERT_LOCKED(base);

 if (!req) return ((void*)0);

 if (name_len >= sizeof(namebuf)) {
  mm_free(req);
  return ((void*)0);
 }

 memset(req, 0, sizeof(struct request));
 req->base = base;

 evtimer_assign(&req->timeout_event, req->base->event_base, evdns_request_timeout_callback, req);

 if (base->global_randomize_case) {
  unsigned i;
  char randbits[(sizeof(namebuf)+7)/8];
  strlcpy(namebuf, name, sizeof(namebuf));
  evutil_secure_rng_get_bytes(randbits, (name_len+7)/8);
  for (i = 0; i < name_len; ++i) {
   if (EVUTIL_ISALPHA_(namebuf[i])) {
    if ((randbits[i >> 3] & (1<<(i & 7))))
     namebuf[i] |= 0x20;
    else
     namebuf[i] &= ~0x20;
   }
  }
  name = namebuf;
 }


 req->request = ((u8 *) req) + sizeof(struct request);

 req->request_appended = 1;
 rlen = evdns_request_data_build(name, name_len, trans_id,
     type, CLASS_INET, req->request, request_max_len);
 if (rlen < 0)
  goto err1;

 req->request_len = rlen;
 req->trans_id = trans_id;
 req->tx_count = 0;
 req->request_type = type;
 req->user_pointer = user_ptr;
 req->user_callback = callback;
 req->ns = issuing_now ? nameserver_pick(base) : ((void*)0);
 req->next = req->prev = ((void*)0);
 req->handle = handle;
 if (handle) {
  handle->current_req = req;
  handle->base = base;
 }

 return req;
err1:
 mm_free(req);
 return ((void*)0);
}
