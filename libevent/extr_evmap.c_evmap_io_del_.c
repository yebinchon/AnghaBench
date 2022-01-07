
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_io {int nread; int nwrite; int nclose; } ;
struct eventop {int (* del ) (struct event_base*,scalar_t__,short,short,void*) ;} ;
struct event_io_map {scalar_t__ nentries; } ;
struct event_base {struct event_io_map io; struct eventop* evsel; } ;
struct event {scalar_t__ ev_fd; short ev_events; } ;
typedef scalar_t__ evutil_socket_t ;


 int EVUTIL_ASSERT (int) ;
 short EV_CLOSED ;
 short EV_ET ;
 short EV_READ ;
 short EV_WRITE ;
 int GET_IO_SLOT (struct evmap_io*,struct event_io_map*,scalar_t__,int ) ;
 int LIST_REMOVE (struct event*,int ) ;
 int ev_io_next ;
 int evmap_io ;
 int stub1 (struct event_base*,scalar_t__,short,short,void*) ;

int
evmap_io_del_(struct event_base *base, evutil_socket_t fd, struct event *ev)
{
 const struct eventop *evsel = base->evsel;
 struct event_io_map *io = &base->io;
 struct evmap_io *ctx;
 int nread, nwrite, nclose, retval = 0;
 short res = 0, old = 0;

 if (fd < 0)
  return 0;

 EVUTIL_ASSERT(fd == ev->ev_fd);


 if (fd >= io->nentries)
  return (-1);


 GET_IO_SLOT(ctx, io, fd, evmap_io);

 nread = ctx->nread;
 nwrite = ctx->nwrite;
 nclose = ctx->nclose;

 if (nread)
  old |= EV_READ;
 if (nwrite)
  old |= EV_WRITE;
 if (nclose)
  old |= EV_CLOSED;

 if (ev->ev_events & EV_READ) {
  if (--nread == 0)
   res |= EV_READ;
  EVUTIL_ASSERT(nread >= 0);
 }
 if (ev->ev_events & EV_WRITE) {
  if (--nwrite == 0)
   res |= EV_WRITE;
  EVUTIL_ASSERT(nwrite >= 0);
 }
 if (ev->ev_events & EV_CLOSED) {
  if (--nclose == 0)
   res |= EV_CLOSED;
  EVUTIL_ASSERT(nclose >= 0);
 }

 if (res) {
  void *extra = ((char*)ctx) + sizeof(struct evmap_io);
  if (evsel->del(base, ev->ev_fd,
   old, (ev->ev_events & EV_ET) | res, extra) == -1) {
   retval = -1;
  } else {
   retval = 1;
  }
 }

 ctx->nread = nread;
 ctx->nwrite = nwrite;
 ctx->nclose = nclose;
 LIST_REMOVE(ev, ev_io_next);

 return (retval);
}
