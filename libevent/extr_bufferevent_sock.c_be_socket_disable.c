
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int connecting; } ;
struct bufferevent {int ev_write; int ev_read; } ;


 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 short EV_READ ;
 short EV_WRITE ;
 int event_del (int *) ;

__attribute__((used)) static int
be_socket_disable(struct bufferevent *bufev, short event)
{
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);
 if (event & EV_READ) {
  if (event_del(&bufev->ev_read) == -1)
   return -1;
 }

 if ((event & EV_WRITE) && ! bufev_p->connecting) {
  if (event_del(&bufev->ev_write) == -1)
   return -1;
 }
 return 0;
}
