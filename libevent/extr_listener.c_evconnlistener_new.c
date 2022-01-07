
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win32_extension_fns {scalar_t__ GetAcceptExSockaddrs; scalar_t__ AcceptEx; } ;
struct event_base {int dummy; } ;
struct evconnlistener {unsigned int flags; int refcnt; int lock; int accept4_flags; void* user_data; int cb; int * ops; } ;
struct evconnlistener_event {struct evconnlistener base; int listener; } ;
typedef int evutil_socket_t ;
typedef int evconnlistener_cb ;


 int EVTHREAD_ALLOC_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVUTIL_SOCK_CLOEXEC ;
 int EVUTIL_SOCK_NONBLOCK ;
 int EV_PERSIST ;
 int EV_READ ;
 unsigned int LEV_OPT_CLOSE_ON_EXEC ;
 unsigned int LEV_OPT_DISABLED ;
 unsigned int LEV_OPT_LEAVE_SOCKETS_BLOCKING ;
 unsigned int LEV_OPT_THREADSAFE ;
 int evconnlistener_enable (struct evconnlistener*) ;
 int evconnlistener_event_ops ;
 struct evconnlistener* evconnlistener_new_async (struct event_base*,int ,void*,unsigned int,int,int ) ;
 int event_assign (int *,struct event_base*,int ,int,int ,struct evconnlistener_event*) ;
 scalar_t__ event_base_get_iocp_ (struct event_base*) ;
 struct win32_extension_fns* event_get_win32_extension_fns_ () ;
 scalar_t__ listen (int ,int) ;
 int listener_read_cb ;
 struct evconnlistener_event* mm_calloc (int,int) ;

struct evconnlistener *
evconnlistener_new(struct event_base *base,
    evconnlistener_cb cb, void *ptr, unsigned flags, int backlog,
    evutil_socket_t fd)
{
 struct evconnlistener_event *lev;
 if (backlog > 0) {
  if (listen(fd, backlog) < 0)
   return ((void*)0);
 } else if (backlog < 0) {
  if (listen(fd, 128) < 0)
   return ((void*)0);
 }

 lev = mm_calloc(1, sizeof(struct evconnlistener_event));
 if (!lev)
  return ((void*)0);

 lev->base.ops = &evconnlistener_event_ops;
 lev->base.cb = cb;
 lev->base.user_data = ptr;
 lev->base.flags = flags;
 lev->base.refcnt = 1;

 lev->base.accept4_flags = 0;
 if (!(flags & LEV_OPT_LEAVE_SOCKETS_BLOCKING))
  lev->base.accept4_flags |= EVUTIL_SOCK_NONBLOCK;
 if (flags & LEV_OPT_CLOSE_ON_EXEC)
  lev->base.accept4_flags |= EVUTIL_SOCK_CLOEXEC;

 if (flags & LEV_OPT_THREADSAFE) {
  EVTHREAD_ALLOC_LOCK(lev->base.lock, EVTHREAD_LOCKTYPE_RECURSIVE);
 }

 event_assign(&lev->listener, base, fd, EV_READ|EV_PERSIST,
     listener_read_cb, lev);

 if (!(flags & LEV_OPT_DISABLED))
     evconnlistener_enable(&lev->base);

 return &lev->base;
}
