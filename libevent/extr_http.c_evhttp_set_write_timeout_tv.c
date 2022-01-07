
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evhttp {int timeout_write; } ;


 int evhttp_set_timeout_tv_ (int *,struct timeval const*,int) ;

void
evhttp_set_write_timeout_tv(struct evhttp* http, const struct timeval* tv)
{
 evhttp_set_timeout_tv_(&http->timeout_write, tv, -1);
}
