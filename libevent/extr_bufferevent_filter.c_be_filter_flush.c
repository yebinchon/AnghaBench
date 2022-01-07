
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {int underlying; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;


 int EVUTIL_ASSERT (struct bufferevent_filtered*) ;
 short EV_READ ;
 short EV_WRITE ;
 int be_filter_process_input (struct bufferevent_filtered*,int,int*) ;
 int be_filter_process_output (struct bufferevent_filtered*,int,int*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_flush (int ,short,int) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_filter_flush(struct bufferevent *bufev,
    short iotype, enum bufferevent_flush_mode mode)
{
 struct bufferevent_filtered *bevf = upcast(bufev);
 int processed_any = 0;
 EVUTIL_ASSERT(bevf);

 bufferevent_incref_and_lock_(bufev);

 if (iotype & EV_READ) {
  be_filter_process_input(bevf, mode, &processed_any);
 }
 if (iotype & EV_WRITE) {
  be_filter_process_output(bevf, mode, &processed_any);
 }


 bufferevent_flush(bevf->underlying, iotype, mode);

 bufferevent_decref_and_unlock_(bufev);

 return processed_any;
}
