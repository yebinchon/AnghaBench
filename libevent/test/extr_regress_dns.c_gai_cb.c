
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gai_outcome {int err; struct evutil_addrinfo* ai; } ;
struct evutil_addrinfo {int dummy; } ;


 int TT_BLATHER (char*) ;
 int event_base_loopexit (scalar_t__,int *) ;
 scalar_t__ exit_base_on_no_pending_results ;
 scalar_t__ n_gai_results_pending ;

__attribute__((used)) static void
gai_cb(int err, struct evutil_addrinfo *res, void *ptr)
{
 struct gai_outcome *go = ptr;
 go->err = err;
 go->ai = res;
 if (--n_gai_results_pending <= 0 && exit_base_on_no_pending_results)
  event_base_loopexit(exit_base_on_no_pending_results, ((void*)0));
 if (n_gai_results_pending < 900)
  TT_BLATHER(("Got an answer; expecting %d more.",
   n_gai_results_pending));
}
