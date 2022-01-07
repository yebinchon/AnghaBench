
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {struct evbuffer_chain* next; } ;


 int evbuffer_chain_free (struct evbuffer_chain*) ;

__attribute__((used)) static void
evbuffer_free_all_chains(struct evbuffer_chain *chain)
{
 struct evbuffer_chain *next;
 for (; chain; chain = next) {
  next = chain->next;
  evbuffer_chain_free(chain);
 }
}
