
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int dummy; } ;
struct event_signal_map {int nentries; struct evmap_signal** entries; } ;
struct event_base {struct event_signal_map sigmap; } ;
typedef int (* evmap_signal_foreach_signal_cb ) (struct event_base*,int,struct evmap_signal*,void*) ;



__attribute__((used)) static int
evmap_signal_foreach_signal(struct event_base *base,
    evmap_signal_foreach_signal_cb fn,
    void *arg)
{
 struct event_signal_map *sigmap = &base->sigmap;
 int r = 0;
 int signum;

 for (signum = 0; signum < sigmap->nentries; ++signum) {
  struct evmap_signal *ctx = sigmap->entries[signum];
  if (!ctx)
   continue;
  if ((r = fn(base, signum, ctx, arg)))
   break;
 }
 return r;
}
