
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;
typedef int ss ;
typedef int sin ;
typedef int evutil_socket_t ;
typedef int ev_socklen_t ;


 int AF_INET ;
 int EVUTIL_INVALID_SOCKET ;
 unsigned int LEV_OPT_CLOSE_ON_FREE ;
 unsigned int LEV_OPT_REUSEABLE ;
 int acceptcb_free ;
 int evconnlistener_get_fd (struct evconnlistener*) ;
 struct evconnlistener* evconnlistener_new_bind (struct event_base*,int ,int*,unsigned int,int,struct sockaddr*,int) ;
 int event_base_dispatch (struct event_base*) ;
 int evutil_socket_connect_ (int *,struct sockaddr*,int) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int htonl (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int tt_assert (int) ;

__attribute__((used)) static void
regress_listener_close_accepted_fd(void *arg)
{
 struct basic_test_data *data = arg;
 struct event_base *base = data->base;
 struct evconnlistener *listener = ((void*)0);
 struct sockaddr_in sin;
 struct sockaddr_storage ss;
 ev_socklen_t slen = sizeof(ss);
 int count = 1;
 unsigned int flags = LEV_OPT_CLOSE_ON_FREE|LEV_OPT_REUSEABLE;
 evutil_socket_t fd = EVUTIL_INVALID_SOCKET;

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(0x7f000001);
 sin.sin_port = 0;


 listener = evconnlistener_new_bind(base, acceptcb_free, &count,
     flags, -1, (struct sockaddr *)&sin, sizeof(sin));
 tt_assert(listener);

 tt_assert(getsockname(evconnlistener_get_fd(listener),
  (struct sockaddr*)&ss, &slen) == 0);
 evutil_socket_connect_(&fd, (struct sockaddr*)&ss, slen);

 event_base_dispatch(base);

end:
 ;
}
