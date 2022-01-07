
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct evconnlistener {int refcnt; void* user_data; int (* errorcb ) (struct evconnlistener*,void*) ;int enabled; int (* cb ) (struct evconnlistener*,scalar_t__,struct sockaddr*,int,void*) ;int accept4_flags; } ;
typedef int ss ;
typedef scalar_t__ evutil_socket_t ;
typedef int (* evconnlistener_errorcb ) (struct evconnlistener*,void*) ;
typedef int (* evconnlistener_cb ) (struct evconnlistener*,scalar_t__,struct sockaddr*,int,void*) ;
typedef scalar_t__ ev_socklen_t ;


 int EVUTIL_ASSERT (int) ;
 scalar_t__ EVUTIL_ERR_ACCEPT_RETRIABLE (int) ;
 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 int event_sock_warn (scalar_t__,char*) ;
 scalar_t__ evutil_accept4_ (scalar_t__,struct sockaddr*,scalar_t__*,int ) ;
 int evutil_closesocket (scalar_t__) ;
 int evutil_socket_geterror (scalar_t__) ;
 int listener_decref_and_unlock (struct evconnlistener*) ;

__attribute__((used)) static void
listener_read_cb(evutil_socket_t fd, short what, void *p)
{
 struct evconnlistener *lev = p;
 int err;
 evconnlistener_cb cb;
 evconnlistener_errorcb errorcb;
 void *user_data;
 LOCK(lev);
 while (1) {
  struct sockaddr_storage ss;
  ev_socklen_t socklen = sizeof(ss);
  evutil_socket_t new_fd = evutil_accept4_(fd, (struct sockaddr*)&ss, &socklen, lev->accept4_flags);
  if (new_fd < 0)
   break;
  if (socklen == 0) {


   evutil_closesocket(new_fd);
   continue;
  }

  if (lev->cb == ((void*)0)) {
   evutil_closesocket(new_fd);
   UNLOCK(lev);
   return;
  }
  ++lev->refcnt;
  cb = lev->cb;
  user_data = lev->user_data;
  UNLOCK(lev);
  cb(lev, new_fd, (struct sockaddr*)&ss, (int)socklen,
      user_data);
  LOCK(lev);
  if (lev->refcnt == 1) {
   int freed = listener_decref_and_unlock(lev);
   EVUTIL_ASSERT(freed);
   return;
  }
  --lev->refcnt;
  if (!lev->enabled) {

   UNLOCK(lev);
   return;
  }
 }
 err = evutil_socket_geterror(fd);
 if (EVUTIL_ERR_ACCEPT_RETRIABLE(err)) {
  UNLOCK(lev);
  return;
 }
 if (lev->errorcb != ((void*)0)) {
  ++lev->refcnt;
  errorcb = lev->errorcb;
  user_data = lev->user_data;
  UNLOCK(lev);
  errorcb(lev, user_data);
  LOCK(lev);
  listener_decref_and_unlock(lev);
 } else {
  event_sock_warn(fd, "Error from accept() call");
  UNLOCK(lev);
 }
}
