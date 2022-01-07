
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {scalar_t__ freeze_end; scalar_t__ freeze_start; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

int
evbuffer_unfreeze(struct evbuffer *buffer, int start)
{
 EVBUFFER_LOCK(buffer);
 if (start)
  buffer->freeze_start = 0;
 else
  buffer->freeze_end = 0;
 EVBUFFER_UNLOCK(buffer);
 return 0;
}
