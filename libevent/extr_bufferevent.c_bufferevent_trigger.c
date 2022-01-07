
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_TRIG_ALL_OPTS ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,short,int) ;

void
bufferevent_trigger(struct bufferevent *bufev, short iotype, int options)
{
 bufferevent_incref_and_lock_(bufev);
 bufferevent_trigger_nolock_(bufev, iotype, options&BEV_TRIG_ALL_OPTS);
 bufferevent_decref_and_unlock_(bufev);
}
