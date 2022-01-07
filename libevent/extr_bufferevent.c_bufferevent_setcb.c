
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {void* cbarg; int errorcb; void* writecb; void* readcb; } ;
typedef int bufferevent_event_cb ;
typedef void* bufferevent_data_cb ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;

void
bufferevent_setcb(struct bufferevent *bufev,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb,
    bufferevent_event_cb eventcb, void *cbarg)
{
 BEV_LOCK(bufev);

 bufev->readcb = readcb;
 bufev->writecb = writecb;
 bufev->errorcb = eventcb;

 bufev->cbarg = cbarg;
 BEV_UNLOCK(bufev);
}
