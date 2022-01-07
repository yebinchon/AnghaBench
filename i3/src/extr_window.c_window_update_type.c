
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_get_property_reply_t ;
typedef scalar_t__ xcb_atom_t ;
struct TYPE_4__ {scalar_t__ window_type; } ;
typedef TYPE_1__ i3Window ;


 int DLOG (char*) ;
 int LOG (char*,scalar_t__) ;
 scalar_t__ XCB_NONE ;
 int free (int *) ;
 int run_assignments (TYPE_1__*) ;
 scalar_t__ xcb_get_preferred_window_type (int *) ;

void window_update_type(i3Window *window, xcb_get_property_reply_t *reply) {
    xcb_atom_t new_type = xcb_get_preferred_window_type(reply);
    free(reply);
    if (new_type == XCB_NONE) {
        DLOG("cannot read _NET_WM_WINDOW_TYPE from window.\n");
        return;
    }

    window->window_type = new_type;
    LOG("_NET_WM_WINDOW_TYPE changed to %i.\n", window->window_type);

    run_assignments(window);
}
