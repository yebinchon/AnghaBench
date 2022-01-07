
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int deferred; } ;
struct bufferevent {int ev_write; int ev_read; } ;


 int BEV_IS_SOCKET (struct bufferevent*) ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int event_deferred_cb_set_priority_ (int *,int) ;
 int event_priority_set (int *,int) ;

int
bufferevent_priority_set(struct bufferevent *bufev, int priority)
{
 int r = -1;
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);

 BEV_LOCK(bufev);
 if (!BEV_IS_SOCKET(bufev))
  goto done;

 if (event_priority_set(&bufev->ev_read, priority) == -1)
  goto done;
 if (event_priority_set(&bufev->ev_write, priority) == -1)
  goto done;

 event_deferred_cb_set_priority_(&bufev_p->deferred, priority);

 r = 0;
done:
 BEV_UNLOCK(bufev);
 return r;
}
