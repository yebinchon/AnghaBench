
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int tt_fail_msg (char*) ;

__attribute__((used)) static void
http_stream_in_cancel_done(struct evhttp_request *req, void *arg)
{

 tt_fail_msg("In cancel done");
}
