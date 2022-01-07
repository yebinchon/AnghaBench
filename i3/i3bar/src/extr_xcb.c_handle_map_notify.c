
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int window; int event; } ;
typedef TYPE_1__ xcb_map_notify_event_t ;
struct TYPE_6__ {int mapped; } ;
typedef TYPE_2__ trayclient ;


 int DLOG (char*,...) ;
 int configure_trayclients () ;
 int draw_bars (int) ;
 TYPE_2__* trayclient_from_window (int ) ;

__attribute__((used)) static void handle_map_notify(xcb_map_notify_event_t *event) {
    DLOG("MapNotify for window = %08x, event = %08x\n", event->window, event->event);

    trayclient *client = trayclient_from_window(event->window);
    if (!client) {
        DLOG("WARNING: Could not find corresponding tray window.\n");
        return;
    }

    DLOG("Tray client mapped (window ID %08x). Adjusting tray.\n", event->window);
    client->mapped = 1;


    configure_trayclients();
    draw_bars(0);
}
