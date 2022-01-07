
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;

void
evbuffer_lock(struct evbuffer *buf)
{
 EVBUFFER_LOCK(buf);
}
