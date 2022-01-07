
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
struct event_base {int dummy; } ;
typedef int ev_uint16_t ;


 struct evhttp* http_setup_gencb (int *,struct event_base*,int,int *,int *) ;

__attribute__((used)) static struct evhttp *
http_setup(ev_uint16_t *pport, struct event_base *base, int mask)
{ return http_setup_gencb(pport, base, mask, ((void*)0), ((void*)0)); }
