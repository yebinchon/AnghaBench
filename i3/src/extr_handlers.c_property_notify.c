
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
typedef scalar_t__ xcb_atom_t ;
typedef scalar_t__ uint8_t ;
struct property_handler_t {scalar_t__ atom; int (* cb ) (int *,int ,scalar_t__,int ,scalar_t__,int *) ;int long_len; } ;


 int FREE (int *) ;
 size_t NUM_HANDLERS ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 scalar_t__ XCB_PROPERTY_DELETE ;
 int conn ;
 struct property_handler_t* property_handlers ;
 int stub1 (int *,int ,scalar_t__,int ,scalar_t__,int *) ;
 int xcb_get_property (int ,int ,int ,scalar_t__,int ,int ,int ) ;
 int * xcb_get_property_reply (int ,int ,int ) ;

__attribute__((used)) static void property_notify(uint8_t state, xcb_window_t window, xcb_atom_t atom) {
    struct property_handler_t *handler = ((void*)0);
    xcb_get_property_reply_t *propr = ((void*)0);

    for (size_t c = 0; c < NUM_HANDLERS; c++) {
        if (property_handlers[c].atom != atom)
            continue;

        handler = &property_handlers[c];
        break;
    }

    if (handler == ((void*)0)) {

        return;
    }

    if (state != XCB_PROPERTY_DELETE) {
        xcb_get_property_cookie_t cookie = xcb_get_property(conn, 0, window, atom, XCB_GET_PROPERTY_TYPE_ANY, 0, handler->long_len);
        propr = xcb_get_property_reply(conn, cookie, 0);
    }


    if (!handler->cb(((void*)0), conn, state, window, atom, propr))
        FREE(propr);
}
