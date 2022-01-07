
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {struct event_base* base; } ;
struct event_base {int dummy; } ;


 struct evhttp* evhttp_new_object () ;

struct evhttp *
evhttp_new(struct event_base *base)
{
 struct evhttp *http = ((void*)0);

 http = evhttp_new_object();
 if (http == ((void*)0))
  return (((void*)0));
 http->base = base;

 return (http);
}
