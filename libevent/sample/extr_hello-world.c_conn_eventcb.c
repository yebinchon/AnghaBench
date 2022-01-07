
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 int bufferevent_free (struct bufferevent*) ;
 int errno ;
 int printf (char*,...) ;
 char* strerror (int ) ;

__attribute__((used)) static void
conn_eventcb(struct bufferevent *bev, short events, void *user_data)
{
 if (events & BEV_EVENT_EOF) {
  printf("Connection closed.\n");
 } else if (events & BEV_EVENT_ERROR) {
  printf("Got an error on the connection: %s\n",
      strerror(errno));
 }


 bufferevent_free(bev);
}
