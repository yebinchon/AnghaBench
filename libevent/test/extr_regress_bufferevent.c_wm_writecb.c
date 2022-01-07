
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int output; } ;


 int assert (int) ;
 int evbuffer_drain (int ,int) ;
 int evbuffer_get_length (int ) ;
 int test_ok ;

__attribute__((used)) static void
wm_writecb(struct bufferevent *bev, void *arg)
{
 assert(evbuffer_get_length(bev->output) <= 100);
 if (evbuffer_get_length(bev->output) == 0) {
  evbuffer_drain(bev->output, evbuffer_get_length(bev->output));
  test_ok++;
 }
}
