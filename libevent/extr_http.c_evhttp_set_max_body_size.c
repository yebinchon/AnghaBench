
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {scalar_t__ default_max_body_size; } ;
typedef scalar_t__ ev_ssize_t ;


 scalar_t__ EV_UINT64_MAX ;

void
evhttp_set_max_body_size(struct evhttp* http, ev_ssize_t max_body_size)
{
 if (max_body_size < 0)
  http->default_max_body_size = EV_UINT64_MAX;
 else
  http->default_max_body_size = max_body_size;
}
