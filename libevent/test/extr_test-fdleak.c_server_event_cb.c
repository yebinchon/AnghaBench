
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 scalar_t__ MAX_REQUESTS ;
 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_get_base (struct bufferevent*) ;
 int event_base_loopbreak (int ) ;
 int exit (int) ;
 int my_perror (char*) ;
 scalar_t__ num_requests ;

__attribute__((used)) static void
server_event_cb(struct bufferevent *bev, short events, void *ctx)
{
 if (events & BEV_EVENT_ERROR) {
  my_perror("Error from bufferevent");
  exit(1);
 } else if (events & BEV_EVENT_EOF) {
  bufferevent_free(bev);
  if (num_requests == MAX_REQUESTS) {
   event_base_loopbreak(bufferevent_get_base(bev));
  }
 }
}
