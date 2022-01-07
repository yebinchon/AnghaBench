
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int input; } ;
typedef TYPE_1__ xcb_icccm_wm_hints_t ;
typedef int xcb_get_property_reply_t ;
struct TYPE_7__ {int doesnt_accept_focus; } ;
typedef TYPE_2__ i3Window ;


 int DLOG (char*) ;
 int FREE (int *) ;
 int LOG (char*,int ) ;
 int XCB_ICCCM_WM_HINT_INPUT ;
 int free (int *) ;
 scalar_t__ xcb_get_property_value_length (int *) ;
 int xcb_icccm_get_wm_hints_from_reply (TYPE_1__*,int *) ;
 scalar_t__ xcb_icccm_wm_hints_get_urgency (TYPE_1__*) ;

void window_update_hints(i3Window *win, xcb_get_property_reply_t *prop, bool *urgency_hint) {
    if (urgency_hint != ((void*)0))
        *urgency_hint = 0;

    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("WM_HINTS not set.\n");
        FREE(prop);
        return;
    }

    xcb_icccm_wm_hints_t hints;

    if (!xcb_icccm_get_wm_hints_from_reply(&hints, prop)) {
        DLOG("Could not get WM_HINTS\n");
        free(prop);
        return;
    }

    if (hints.flags & XCB_ICCCM_WM_HINT_INPUT) {
        win->doesnt_accept_focus = !hints.input;
        LOG("WM_HINTS.input changed to \"%d\"\n", hints.input);
    }

    if (urgency_hint != ((void*)0))
        *urgency_hint = (xcb_icccm_wm_hints_get_urgency(&hints) != 0);

    free(prop);
}
