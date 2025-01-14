
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {scalar_t__ off; } ;
struct evbuffer {int total_len; struct evbuffer_chain* last; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* first; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 struct evbuffer_chain** evbuffer_free_trailing_empty_chains (struct evbuffer*) ;

__attribute__((used)) static void
evbuffer_chain_insert(struct evbuffer *buf,
    struct evbuffer_chain *chain)
{
 ASSERT_EVBUFFER_LOCKED(buf);
 if (*buf->last_with_datap == ((void*)0)) {

  EVUTIL_ASSERT(buf->last_with_datap == &buf->first);
  EVUTIL_ASSERT(buf->first == ((void*)0));
  buf->first = buf->last = chain;
 } else {
  struct evbuffer_chain **chp;
  chp = evbuffer_free_trailing_empty_chains(buf);
  *chp = chain;
  if (chain->off)
   buf->last_with_datap = chp;
  buf->last = chain;
 }
 buf->total_len += chain->off;
}
