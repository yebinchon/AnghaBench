
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int (* newreqcb ) (struct evhttp_request*,void*) ;void* newreqcbarg; } ;



void
evhttp_set_newreqcb(struct evhttp *http,
    int (*cb)(struct evhttp_request *, void *), void *cbarg)
{
 http->newreqcb = cb;
 http->newreqcbarg = cbarg;
}
