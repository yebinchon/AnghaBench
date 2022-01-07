
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct evhttp_request {int dummy; } ;


 int EV_TIMEOUT ;
 int event_base_once (int ,int,int ,int ,struct evhttp_request*,struct timeval*) ;
 int exit_base ;
 int http_timeout_reply_cb ;

__attribute__((used)) static void
http_timeout_cb(struct evhttp_request *req, void *arg)
{
 struct timeval when = { 0, 100 };
 event_base_once(exit_base, -1, EV_TIMEOUT,
     http_timeout_reply_cb, req, &when);
}
