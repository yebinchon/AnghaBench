
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int event_base_loopexit (void*,int *) ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_failed_request_done(struct evhttp_request *req, void *arg)
{
 tt_assert(!req);
end:
 event_base_loopexit(arg, ((void*)0));
}
