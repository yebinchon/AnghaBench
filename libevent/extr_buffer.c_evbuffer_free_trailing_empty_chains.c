
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {scalar_t__ off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain** last_with_datap; } ;


 scalar_t__ CHAIN_PINNED (struct evbuffer_chain*) ;
 int EVUTIL_ASSERT (int ) ;
 int evbuffer_chains_all_empty (struct evbuffer_chain*) ;
 int evbuffer_free_all_chains (struct evbuffer_chain*) ;

__attribute__((used)) static struct evbuffer_chain **
evbuffer_free_trailing_empty_chains(struct evbuffer *buf)
{
 struct evbuffer_chain **ch = buf->last_with_datap;

 while ((*ch) && ((*ch)->off != 0 || CHAIN_PINNED(*ch)))
  ch = &(*ch)->next;
 if (*ch) {
  EVUTIL_ASSERT(evbuffer_chains_all_empty(*ch));
  evbuffer_free_all_chains(*ch);
  *ch = ((void*)0);
 }
 return ch;
}
