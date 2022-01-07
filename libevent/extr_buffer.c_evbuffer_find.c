
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_ptr {scalar_t__ pos; } ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 unsigned char* evbuffer_pullup (struct evbuffer*,scalar_t__) ;
 struct evbuffer_ptr evbuffer_search (struct evbuffer*,char const*,size_t,int *) ;

unsigned char *
evbuffer_find(struct evbuffer *buffer, const unsigned char *what, size_t len)
{
 unsigned char *search;
 struct evbuffer_ptr ptr;

 EVBUFFER_LOCK(buffer);

 ptr = evbuffer_search(buffer, (const char *)what, len, ((void*)0));
 if (ptr.pos < 0) {
  search = ((void*)0);
 } else {
  search = evbuffer_pullup(buffer, ptr.pos + len);
  if (search)
   search += ptr.pos;
 }
 EVBUFFER_UNLOCK(buffer);
 return search;
}
