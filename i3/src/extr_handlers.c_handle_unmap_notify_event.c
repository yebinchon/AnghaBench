
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sequence; int window; int event; } ;
typedef TYPE_1__ xcb_unmap_notify_event_t ;
typedef int xcb_get_input_focus_cookie_t ;
struct TYPE_8__ {scalar_t__ ignore_unmap; } ;
typedef TYPE_2__ Con ;


 int A__NET_WM_DESKTOP ;
 int A__NET_WM_STATE ;
 int DLOG (char*,scalar_t__,...) ;
 int DONT_KILL_WINDOW ;
 int LOG (char*) ;
 int XCB_ENTER_NOTIFY ;
 int add_ignore_event (int ,int ) ;
 TYPE_2__* con_by_frame_id (int ) ;
 TYPE_2__* con_by_window_id (int ) ;
 int conn ;
 int free (int ) ;
 int tree_close_internal (TYPE_2__*,int ,int) ;
 int tree_render () ;
 int xcb_delete_property (int ,int ,int ) ;
 int xcb_get_input_focus (int ) ;
 int xcb_get_input_focus_reply (int ,int ,int *) ;

__attribute__((used)) static void handle_unmap_notify_event(xcb_unmap_notify_event_t *event) {
    DLOG("UnmapNotify for 0x%08x (received from 0x%08x), serial %d\n", event->window, event->event, event->sequence);
    xcb_get_input_focus_cookie_t cookie;
    Con *con = con_by_window_id(event->window);
    if (con == ((void*)0)) {


        con = con_by_frame_id(event->window);
        if (con == ((void*)0)) {
            LOG("Not a managed window, ignoring UnmapNotify event\n");
            return;
        }

        if (con->ignore_unmap > 0)
            con->ignore_unmap--;

        cookie = xcb_get_input_focus(conn);
        DLOG("ignore_unmap = %d for frame of container %p\n", con->ignore_unmap, con);
        goto ignore_end;
    }


    cookie = xcb_get_input_focus(conn);

    if (con->ignore_unmap > 0) {
        DLOG("ignore_unmap = %d, dec\n", con->ignore_unmap);
        con->ignore_unmap--;
        goto ignore_end;
    }



    xcb_delete_property(conn, event->window, A__NET_WM_DESKTOP);
    xcb_delete_property(conn, event->window, A__NET_WM_STATE);

    tree_close_internal(con, DONT_KILL_WINDOW, 0);
    tree_render();

ignore_end:
    add_ignore_event(event->sequence, XCB_ENTER_NOTIFY);






    free(xcb_get_input_focus_reply(conn, cookie, ((void*)0)));
}
