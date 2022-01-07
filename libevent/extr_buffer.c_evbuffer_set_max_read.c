
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t max_read; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 size_t INT_MAX ;

int evbuffer_set_max_read(struct evbuffer *buf, size_t max)
{
 if (max > INT_MAX) {
  return -1;
 }

 EVBUFFER_LOCK(buf);
 buf->max_read = max;
 EVBUFFER_UNLOCK(buf);
 return 0;
}
