
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct evbuffer {struct event_callback deferred; scalar_t__ deferred_cbs; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

int
evbuffer_get_callbacks_(struct evbuffer *buffer, struct event_callback **cbs,
    int max_cbs)
{
 int r = 0;
 EVBUFFER_LOCK(buffer);
 if (buffer->deferred_cbs) {
  if (max_cbs < 1) {
   r = -1;
   goto done;
  }
  cbs[0] = &buffer->deferred;
  r = 1;
 }
done:
 EVBUFFER_UNLOCK(buffer);
 return r;
}
