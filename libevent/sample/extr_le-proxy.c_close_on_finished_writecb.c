
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_free (struct bufferevent*) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static void
close_on_finished_writecb(struct bufferevent *bev, void *ctx)
{
 struct evbuffer *b = bufferevent_get_output(bev);

 if (evbuffer_get_length(b) == 0) {
  bufferevent_free(bev);
 }
}
