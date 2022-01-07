
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct nameserver* ns; } ;
struct nameserver {scalar_t__ requests_inflight; } ;


 int EVUTIL_ASSERT (int) ;

__attribute__((used)) static void
request_swap_ns(struct request *req, struct nameserver *ns) {
 if (ns && req->ns != ns) {
  EVUTIL_ASSERT(req->ns->requests_inflight > 0);
  req->ns->requests_inflight--;
  ns->requests_inflight++;

  req->ns = ns;
 }
}
