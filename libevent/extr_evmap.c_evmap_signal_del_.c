
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int events; } ;
struct eventop {int (* del ) (struct event_base*,int ,int ,int ,int *) ;} ;
struct event_signal_map {int nentries; } ;
struct event_base {struct event_signal_map sigmap; struct eventop* evsigsel; } ;
struct event {int ev_fd; } ;


 int EV_SIGNAL ;
 int GET_SIGNAL_SLOT (struct evmap_signal*,struct event_signal_map*,int,int ) ;
 int * LIST_FIRST (int *) ;
 int LIST_REMOVE (struct event*,int ) ;
 int ev_signal_next ;
 int evmap_signal ;
 int stub1 (struct event_base*,int ,int ,int ,int *) ;

int
evmap_signal_del_(struct event_base *base, int sig, struct event *ev)
{
 const struct eventop *evsel = base->evsigsel;
 struct event_signal_map *map = &base->sigmap;
 struct evmap_signal *ctx;

 if (sig < 0 || sig >= map->nentries)
  return (-1);

 GET_SIGNAL_SLOT(ctx, map, sig, evmap_signal);

 LIST_REMOVE(ev, ev_signal_next);

 if (LIST_FIRST(&ctx->events) == ((void*)0)) {
  if (evsel->del(base, ev->ev_fd, 0, EV_SIGNAL, ((void*)0)) == -1)
   return (-1);
 }

 return (1);
}
