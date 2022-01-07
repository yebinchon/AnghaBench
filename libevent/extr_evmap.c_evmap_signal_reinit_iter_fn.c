
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int events; } ;
struct eventop {int (* add ) (struct event_base*,int,int ,int ,int *) ;} ;
struct event_base {struct eventop* evsigsel; } ;


 int EV_SIGNAL ;
 int LIST_EMPTY (int *) ;
 int stub1 (struct event_base*,int,int ,int ,int *) ;

__attribute__((used)) static int
evmap_signal_reinit_iter_fn(struct event_base *base,
    int signum, struct evmap_signal *ctx, void *arg)
{
 const struct eventop *evsel = base->evsigsel;
 int *result = arg;

 if (!LIST_EMPTY(&ctx->events)) {
  if (evsel->add(base, signum, 0, EV_SIGNAL, ((void*)0)) == -1)
   *result = -1;
 }
 return 0;
}
