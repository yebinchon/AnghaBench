
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {scalar_t__ off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain** last_with_datap; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;

__attribute__((used)) static int
advance_last_with_data(struct evbuffer *buf)
{
 int n = 0;
 struct evbuffer_chain **chainp = buf->last_with_datap;

 ASSERT_EVBUFFER_LOCKED(buf);

 if (!*chainp)
  return 0;

 while ((*chainp)->next) {
  chainp = &(*chainp)->next;
  if ((*chainp)->off)
   buf->last_with_datap = chainp;
  ++n;
 }
 return n;
}
