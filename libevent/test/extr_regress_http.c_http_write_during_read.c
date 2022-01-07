
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int bufferevent_write (struct bufferevent*,char*,int ) ;
 int event_base_loopexit (int ,struct timeval*) ;
 int evutil_timerclear (struct timeval*) ;
 int exit_base ;
 int strlen (char*) ;

__attribute__((used)) static void
http_write_during_read(evutil_socket_t fd, short what, void *arg)
{
 struct bufferevent *bev = arg;
 struct timeval tv;

 bufferevent_write(bev, "foobar", strlen("foobar"));

 evutil_timerclear(&tv);
 tv.tv_sec = 1;
 event_base_loopexit(exit_base, &tv);
}
