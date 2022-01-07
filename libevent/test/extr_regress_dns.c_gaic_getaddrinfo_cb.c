
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gaic_request_status {scalar_t__ magic; int canceled; int cancel_event; struct event_base* base; } ;
struct evutil_addrinfo {int dummy; } ;
struct event_base {int dummy; } ;


 int EVUTIL_EAI_CANCEL ;
 scalar_t__ GAIC_MAGIC ;
 int event_base_loopexit (struct event_base*,int *) ;
 int event_del (int *) ;
 int free (struct gaic_request_status*) ;
 int memset (struct gaic_request_status*,int,int) ;
 scalar_t__ pending ;
 int tt_assert (int) ;

__attribute__((used)) static void
gaic_getaddrinfo_cb(int result, struct evutil_addrinfo *res, void *arg)
{
 struct gaic_request_status *status = arg;
 struct event_base *base = status->base;
 tt_assert(status->magic == GAIC_MAGIC);

 if (result == EVUTIL_EAI_CANCEL) {
  tt_assert(status->canceled);
 }
 event_del(&status->cancel_event);

 memset(status, 0xf0, sizeof(*status));
 free(status);

end:
 if (--pending <= 0)
  event_base_loopexit(base, ((void*)0));
}
