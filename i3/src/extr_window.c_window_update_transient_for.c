
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
struct TYPE_3__ {int transient_for; int id; } ;
typedef TYPE_1__ i3Window ;


 int DLOG (char*,int ,...) ;
 int FREE (int *) ;
 int XCB_NONE ;
 int free (int *) ;
 scalar_t__ xcb_get_property_value_length (int *) ;
 int xcb_icccm_get_wm_transient_for_from_reply (int *,int *) ;

void window_update_transient_for(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("TRANSIENT_FOR not set on window 0x%08x.\n", win->id);
        win->transient_for = XCB_NONE;
        FREE(prop);
        return;
    }

    xcb_window_t transient_for;
    if (!xcb_icccm_get_wm_transient_for_from_reply(&transient_for, prop)) {
        free(prop);
        return;
    }

    DLOG("Transient for changed to 0x%08x (window 0x%08x)\n", transient_for, win->id);

    win->transient_for = transient_for;

    free(prop);
}
