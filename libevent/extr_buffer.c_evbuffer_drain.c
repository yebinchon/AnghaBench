
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {size_t off; size_t misalign; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; size_t n_del_for_cb; struct evbuffer_chain* first; struct evbuffer_chain** last_with_datap; scalar_t__ freeze_start; } ;


 scalar_t__ CHAIN_PINNED_R (struct evbuffer_chain*) ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 int HAS_PINNED_R (struct evbuffer*) ;
 int ZERO_CHAIN (struct evbuffer*) ;
 int evbuffer_chain_free (struct evbuffer_chain*) ;
 int evbuffer_invoke_callbacks_ (struct evbuffer*) ;

int
evbuffer_drain(struct evbuffer *buf, size_t len)
{
 struct evbuffer_chain *chain, *next;
 size_t remaining, old_len;
 int result = 0;

 EVBUFFER_LOCK(buf);
 old_len = buf->total_len;

 if (old_len == 0)
  goto done;

 if (buf->freeze_start) {
  result = -1;
  goto done;
 }

 if (len >= old_len && !HAS_PINNED_R(buf)) {
  len = old_len;
  for (chain = buf->first; chain != ((void*)0); chain = next) {
   next = chain->next;
   evbuffer_chain_free(chain);
  }

  ZERO_CHAIN(buf);
 } else {
  if (len >= old_len)
   len = old_len;

  buf->total_len -= len;
  remaining = len;
  for (chain = buf->first;
       remaining >= chain->off;
       chain = next) {
   next = chain->next;
   remaining -= chain->off;

   if (chain == *buf->last_with_datap) {
    buf->last_with_datap = &buf->first;
   }
   if (&chain->next == buf->last_with_datap)
    buf->last_with_datap = &buf->first;

   if (CHAIN_PINNED_R(chain)) {
    EVUTIL_ASSERT(remaining == 0);
    chain->misalign += chain->off;
    chain->off = 0;
    break;
   } else
    evbuffer_chain_free(chain);
  }

  buf->first = chain;
  EVUTIL_ASSERT(remaining <= chain->off);
  chain->misalign += remaining;
  chain->off -= remaining;
 }

 buf->n_del_for_cb += len;

 evbuffer_invoke_callbacks_(buf);

done:
 EVBUFFER_UNLOCK(buf);
 return result;
}
