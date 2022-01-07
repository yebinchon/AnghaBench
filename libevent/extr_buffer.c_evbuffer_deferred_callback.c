
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct evbuffer {struct bufferevent* parent; } ;
struct bufferevent {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int bufferevent_decref_ (struct bufferevent*) ;
 int evbuffer_decref_and_unlock_ (struct evbuffer*) ;
 int evbuffer_run_callbacks (struct evbuffer*,int) ;

__attribute__((used)) static void
evbuffer_deferred_callback(struct event_callback *cb, void *arg)
{
 struct bufferevent *parent = ((void*)0);
 struct evbuffer *buffer = arg;



 EVBUFFER_LOCK(buffer);
 parent = buffer->parent;
 evbuffer_run_callbacks(buffer, 1);
 evbuffer_decref_and_unlock_(buffer);
 if (parent)
  bufferevent_decref_(parent);
}
