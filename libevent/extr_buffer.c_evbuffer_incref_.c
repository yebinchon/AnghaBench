
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int refcnt; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

void
evbuffer_incref_(struct evbuffer *buf)
{
 EVBUFFER_LOCK(buf);
 ++buf->refcnt;
 EVBUFFER_UNLOCK(buf);
}
