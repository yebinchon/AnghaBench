
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int EVUTIL_SHUT_WR ;
 int EV_READ ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int shutdown (int ,int ) ;
 int test_ok ;

__attribute__((used)) static void
http_incomplete_writecb(struct bufferevent *bev, void *arg)
{
 if (arg != ((void*)0)) {
  evutil_socket_t fd = *(evutil_socket_t *)arg;

  shutdown(fd, EVUTIL_SHUT_WR);
 }
 if (evbuffer_get_length(bufferevent_get_output(bev)) == 0) {

  bufferevent_enable(bev, EV_READ);
  test_ok++;
 }
}
