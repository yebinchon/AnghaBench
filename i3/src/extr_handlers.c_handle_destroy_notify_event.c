
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int window; int event; int sequence; } ;
typedef TYPE_1__ xcb_unmap_notify_event_t ;
struct TYPE_6__ {int window; int event; int sequence; } ;
typedef TYPE_2__ xcb_destroy_notify_event_t ;


 int DLOG (char*,int ,int ) ;
 int handle_unmap_notify_event (TYPE_1__*) ;

__attribute__((used)) static void handle_destroy_notify_event(xcb_destroy_notify_event_t *event) {
    DLOG("destroy notify for 0x%08x, 0x%08x\n", event->event, event->window);

    xcb_unmap_notify_event_t unmap;
    unmap.sequence = event->sequence;
    unmap.event = event->event;
    unmap.window = event->window;

    handle_unmap_notify_event(&unmap);
}
