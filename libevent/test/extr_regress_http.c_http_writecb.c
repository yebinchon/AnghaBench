
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int test_ok ;

__attribute__((used)) static void
http_writecb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bufferevent_get_output(bev)) == 0) {

  bufferevent_enable(bev, EV_READ);
  test_ok++;
 }
}
