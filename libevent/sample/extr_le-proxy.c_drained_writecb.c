
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,struct bufferevent*) ;
 int bufferevent_setwatermark (struct bufferevent*,int ,int ,int ) ;
 int eventcb ;
 int readcb ;

__attribute__((used)) static void
drained_writecb(struct bufferevent *bev, void *ctx)
{
 struct bufferevent *partner = ctx;



 bufferevent_setcb(bev, readcb, ((void*)0), eventcb, partner);
 bufferevent_setwatermark(bev, EV_WRITE, 0, 0);
 if (partner)
  bufferevent_enable(partner, EV_READ);
}
