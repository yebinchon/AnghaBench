
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int dummy; } ;
struct evbuffer {int dummy; } ;


 int evbuffer_chain_insert (struct evbuffer*,struct evbuffer_chain*) ;
 struct evbuffer_chain* evbuffer_chain_new (size_t) ;

__attribute__((used)) static inline struct evbuffer_chain *
evbuffer_chain_insert_new(struct evbuffer *buf, size_t datlen)
{
 struct evbuffer_chain *chain;
 if ((chain = evbuffer_chain_new(datlen)) == ((void*)0))
  return ((void*)0);
 evbuffer_chain_insert(buf, chain);
 return chain;
}
