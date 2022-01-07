
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_free (struct bufferevent*) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int printf (char*) ;

__attribute__((used)) static void
conn_writecb(struct bufferevent *bev, void *user_data)
{
 struct evbuffer *output = bufferevent_get_output(bev);
 if (evbuffer_get_length(output) == 0) {
  printf("flushed answer\n");
  bufferevent_free(bev);
 }
}
