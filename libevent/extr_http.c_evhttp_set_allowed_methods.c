
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int allowed_methods; } ;
typedef int ev_uint32_t ;



void
evhttp_set_allowed_methods(struct evhttp* http, ev_uint32_t methods)
{
 http->allowed_methods = methods;
}
