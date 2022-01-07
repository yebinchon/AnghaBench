
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
struct TYPE_3__ {int leader; int id; } ;
typedef TYPE_1__ i3Window ;


 int DLOG (char*,int ) ;
 int FREE (int *) ;
 int XCB_NONE ;
 int free (int *) ;
 int * xcb_get_property_value (int *) ;
 scalar_t__ xcb_get_property_value_length (int *) ;

void window_update_leader(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("CLIENT_LEADER not set on window 0x%08x.\n", win->id);
        win->leader = XCB_NONE;
        FREE(prop);
        return;
    }

    xcb_window_t *leader = xcb_get_property_value(prop);
    if (leader == ((void*)0)) {
        free(prop);
        return;
    }

    DLOG("Client leader changed to %08x\n", *leader);

    win->leader = *leader;

    free(prop);
}
