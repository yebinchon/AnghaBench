
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int timeout_write; int timeout_read; } ;


 int evhttp_set_timeout_ (int *,int,int) ;

void
evhttp_set_timeout(struct evhttp* http, int timeout)
{
 evhttp_set_timeout_(&http->timeout_read, timeout, -1);
 evhttp_set_timeout_(&http->timeout_write, timeout, -1);
}
