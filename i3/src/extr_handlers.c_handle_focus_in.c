
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ event; scalar_t__ mode; scalar_t__ detail; } ;
typedef TYPE_2__ xcb_focus_in_event_t ;
struct TYPE_10__ {TYPE_1__* parent; int name; int * window; } ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_3__ Con ;


 scalar_t__ CT_DOCKAREA ;
 int DLOG (char*,...) ;
 scalar_t__ XCB_NONE ;
 scalar_t__ XCB_NOTIFY_DETAIL_POINTER ;
 scalar_t__ XCB_NOTIFY_MODE_GRAB ;
 scalar_t__ XCB_NOTIFY_MODE_UNGRAB ;
 int con_activate_unblock (TYPE_3__*) ;
 TYPE_3__* con_by_window_id (scalar_t__) ;
 int con_focus (int ) ;
 int con_inside_floating (TYPE_3__*) ;
 int croot ;
 int focused ;
 scalar_t__ focused_id ;
 scalar_t__ root ;
 int tree_render () ;
 int x_push_changes (int ) ;

__attribute__((used)) static void handle_focus_in(xcb_focus_in_event_t *event) {
    DLOG("focus change in, for window 0x%08x\n", event->event);

    if (event->event == root) {
        DLOG("Received focus in for root window, refocusing the focused window.\n");
        con_focus(focused);
        focused_id = XCB_NONE;
        x_push_changes(croot);
    }

    Con *con;
    if ((con = con_by_window_id(event->event)) == ((void*)0) || con->window == ((void*)0))
        return;
    DLOG("That is con %p / %s\n", con, con->name);

    if (event->mode == XCB_NOTIFY_MODE_GRAB ||
        event->mode == XCB_NOTIFY_MODE_UNGRAB) {
        DLOG("FocusIn event for grab/ungrab, ignoring\n");
        return;
    }

    if (event->detail == XCB_NOTIFY_DETAIL_POINTER) {
        DLOG("notify detail is pointer, ignoring this event\n");
        return;
    }



    if (focused_id == event->event && !con_inside_floating(con)) {
        DLOG("focus matches the currently focused window, not doing anything\n");
        return;
    }


    if (con->parent->type == CT_DOCKAREA) {
        DLOG("This is a dock client, not focusing.\n");
        return;
    }

    DLOG("focus is different / refocusing floating window: updating decorations\n");

    con_activate_unblock(con);


    focused_id = event->event;
    tree_render();
}
