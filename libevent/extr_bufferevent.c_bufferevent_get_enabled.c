
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {short enabled; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;

short
bufferevent_get_enabled(struct bufferevent *bufev)
{
 short r;
 BEV_LOCK(bufev);
 r = bufev->enabled;
 BEV_UNLOCK(bufev);
 return r;
}
