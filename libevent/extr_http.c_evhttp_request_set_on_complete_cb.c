
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {void (* on_complete_cb ) (struct evhttp_request*,void*) ;void* on_complete_cb_arg; } ;



void
evhttp_request_set_on_complete_cb(struct evhttp_request *req,
    void (*cb)(struct evhttp_request *, void *), void *cb_arg)
{
 req->on_complete_cb = cb;
 req->on_complete_cb_arg = cb_arg;
}
