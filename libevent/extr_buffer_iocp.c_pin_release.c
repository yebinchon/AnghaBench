
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_overlapped {int n_buffers; struct evbuffer_chain* first_pinned; } ;
struct evbuffer_chain {struct evbuffer_chain* next; } ;


 int EVUTIL_ASSERT (struct evbuffer_chain*) ;
 int evbuffer_chain_unpin_ (struct evbuffer_chain*,unsigned int) ;

__attribute__((used)) static void
pin_release(struct evbuffer_overlapped *eo, unsigned flag)
{
 int i;
 struct evbuffer_chain *next, *chain = eo->first_pinned;

 for (i = 0; i < eo->n_buffers; ++i) {
  EVUTIL_ASSERT(chain);
  next = chain->next;
  evbuffer_chain_unpin_(chain, flag);
  chain = next;
 }
}
