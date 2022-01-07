
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {size_t pos; TYPE_1__ internal_; } ;
struct evbuffer_chain {size_t off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain* first; } ;
typedef enum evbuffer_ptr_how { ____Placeholder_evbuffer_ptr_how } evbuffer_ptr_how ;


 int EVBUFFER_LOCK (struct evbuffer*) ;


 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 size_t EV_SIZE_MAX ;
 int PTR_NOT_FOUND (struct evbuffer_ptr*) ;

int
evbuffer_ptr_set(struct evbuffer *buf, struct evbuffer_ptr *pos,
    size_t position, enum evbuffer_ptr_how how)
{
 size_t left = position;
 struct evbuffer_chain *chain = ((void*)0);
 int result = 0;

 EVBUFFER_LOCK(buf);

 switch (how) {
 case 128:
  chain = buf->first;
  pos->pos = position;
  position = 0;
  break;
 case 129:


  if (pos->pos < 0 || EV_SIZE_MAX - position < (size_t)pos->pos) {
   EVBUFFER_UNLOCK(buf);
   return -1;
  }
  chain = pos->internal_.chain;
  pos->pos += position;
  position = pos->internal_.pos_in_chain;
  break;
 }

 EVUTIL_ASSERT(EV_SIZE_MAX - left >= position);
 while (chain && position + left >= chain->off) {
  left -= chain->off - position;
  chain = chain->next;
  position = 0;
 }
 if (chain) {
  pos->internal_.chain = chain;
  pos->internal_.pos_in_chain = position + left;
 } else if (left == 0) {

  pos->internal_.chain = ((void*)0);
  pos->internal_.pos_in_chain = 0;
 } else {
  PTR_NOT_FOUND(pos);
  result = -1;
 }

 EVBUFFER_UNLOCK(buf);

 return result;
}
