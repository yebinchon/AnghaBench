
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t max_read; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

size_t evbuffer_get_max_read(struct evbuffer *buf)
{
 size_t result;
 EVBUFFER_LOCK(buf);
 result = buf->max_read;
 EVBUFFER_UNLOCK(buf);
 return result;
}
