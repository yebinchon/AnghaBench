
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;


 scalar_t__ MAX_REQUESTS ;
 int bufferevent_free (struct bufferevent*) ;
 struct event_base* bufferevent_get_base (struct bufferevent*) ;
 int bufferevent_read (struct bufferevent*,unsigned char*,int) ;
 int exit (int) ;
 scalar_t__ num_requests ;
 int puts (char*) ;
 int start_client (struct event_base*) ;

__attribute__((used)) static void
client_read_cb(struct bufferevent *bev, void *ctx)
{
 unsigned char tmp;
 struct event_base *base = bufferevent_get_base(bev);

 bufferevent_read(bev, &tmp, 1);
 if (tmp != 'A') {
  puts("Incorrect data received!");
  exit(2);
 }
 bufferevent_free(bev);

 num_requests++;
 if (++num_requests < MAX_REQUESTS) {
  start_client(base);
 }
}
