
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {size_t pos; TYPE_1__ internal_; } ;
struct evbuffer_chain {int misalign; size_t off; struct evbuffer_chain* next; scalar_t__ buffer; } ;



__attribute__((used)) static inline size_t
evbuffer_strspn(
 struct evbuffer_ptr *ptr, const char *chrset)
{
 size_t count = 0;
 struct evbuffer_chain *chain = ptr->internal_.chain;
 size_t i = ptr->internal_.pos_in_chain;

 if (!chain)
  return 0;

 while (1) {
  char *buffer = (char *)chain->buffer + chain->misalign;
  for (; i < chain->off; ++i) {
   const char *p = chrset;
   while (*p) {
    if (buffer[i] == *p++)
     goto next;
   }
   ptr->internal_.chain = chain;
   ptr->internal_.pos_in_chain = i;
   ptr->pos += count;
   return count;
  next:
   ++count;
  }
  i = 0;

  if (! chain->next) {
   ptr->internal_.chain = chain;
   ptr->internal_.pos_in_chain = i;
   ptr->pos += count;
   return count;
  }

  chain = chain->next;
 }
}
