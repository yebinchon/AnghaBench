
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {TYPE_1__ internal_; } ;
struct evbuffer_chain {size_t misalign; scalar_t__* buffer; } ;



__attribute__((used)) static inline int
evbuffer_getchr(struct evbuffer_ptr *it)
{
 struct evbuffer_chain *chain = it->internal_.chain;
 size_t off = it->internal_.pos_in_chain;

 if (chain == ((void*)0))
  return -1;

 return (unsigned char)chain->buffer[chain->misalign + off];
}
