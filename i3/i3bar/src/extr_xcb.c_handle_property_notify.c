
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ atom; scalar_t__ state; int window; } ;
typedef TYPE_1__ xcb_property_notify_event_t ;
struct TYPE_11__ {scalar_t__ length; int format; } ;
typedef TYPE_2__ xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
typedef int uint32_t ;
struct TYPE_12__ {int win; scalar_t__ mapped; } ;
typedef TYPE_3__ trayclient ;


 int DLOG (char*,...) ;
 int ELOG (char*,int ) ;
 scalar_t__ XCB_ATOM_WM_CLASS ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 scalar_t__ XCB_PROPERTY_NEW_VALUE ;
 int XEMBED_MAPPED ;
 size_t _XEMBED_INFO ;
 scalar_t__* atoms ;
 int free (TYPE_2__*) ;
 TYPE_3__* trayclient_from_window (int ) ;
 int trayclient_update_class (TYPE_3__*) ;
 int xcb_connection ;
 TYPE_2__* xcb_get_property_reply (int ,int ,int *) ;
 int xcb_get_property_unchecked (int ,int ,int ,scalar_t__,int ,int ,int) ;
 int* xcb_get_property_value (TYPE_2__*) ;
 int xcb_map_window (int ,int ) ;
 int xcb_unmap_window (int ,int ) ;

__attribute__((used)) static void handle_property_notify(xcb_property_notify_event_t *event) {
    DLOG("PropertyNotify\n");
    if (event->atom == atoms[_XEMBED_INFO] &&
        event->state == XCB_PROPERTY_NEW_VALUE) {

        DLOG("xembed_info updated\n");

        trayclient *client = trayclient_from_window(event->window);
        if (!client) {
            ELOG("PropertyNotify received for unknown window %08x\n", event->window);
            return;
        }

        xcb_get_property_cookie_t xembedc;
        xembedc = xcb_get_property_unchecked(xcb_connection,
                                             0,
                                             client->win,
                                             atoms[_XEMBED_INFO],
                                             XCB_GET_PROPERTY_TYPE_ANY,
                                             0,
                                             2 * 32);

        xcb_get_property_reply_t *xembedr = xcb_get_property_reply(xcb_connection,
                                                                   xembedc,
                                                                   ((void*)0));
        if (xembedr == ((void*)0) || xembedr->length == 0) {
            DLOG("xembed_info unset\n");
            return;
        }

        DLOG("xembed format = %d, len = %d\n", xembedr->format, xembedr->length);
        uint32_t *xembed = xcb_get_property_value(xembedr);
        DLOG("xembed version = %d\n", xembed[0]);
        DLOG("xembed flags = %d\n", xembed[1]);
        bool map_it = ((xembed[1] & XEMBED_MAPPED) == XEMBED_MAPPED);
        DLOG("map state now %d\n", map_it);
        if (client->mapped && !map_it) {

            xcb_unmap_window(xcb_connection, client->win);
        } else if (!client->mapped && map_it) {

            xcb_map_window(xcb_connection, client->win);
        }
        free(xembedr);
    } else if (event->atom == XCB_ATOM_WM_CLASS) {
        trayclient *client = trayclient_from_window(event->window);
        if (client) {
            trayclient_update_class(client);
        }
    }
}
