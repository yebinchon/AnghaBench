
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_TRIG_ALL_OPTS ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int) ;

void
bufferevent_trigger_event(struct bufferevent *bufev, short what, int options)
{
 bufferevent_incref_and_lock_(bufev);
 bufferevent_run_eventcb_(bufev, what, options&BEV_TRIG_ALL_OPTS);
 bufferevent_decref_and_unlock_(bufev);
}
