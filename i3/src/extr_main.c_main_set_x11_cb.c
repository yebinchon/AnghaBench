
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*,int) ;
 int ev_feed_event (int ,int ,int ) ;
 int ev_prepare_start (int ,int ) ;
 int ev_prepare_stop (int ,int ) ;
 int main_loop ;
 int xcb_prepare ;

void main_set_x11_cb(bool enable) {
    DLOG("Setting main X11 callback to enabled=%d\n", enable);
    if (enable) {
        ev_prepare_start(main_loop, xcb_prepare);


        ev_feed_event(main_loop, xcb_prepare, 0);
    } else {
        ev_prepare_stop(main_loop, xcb_prepare);
    }
}
