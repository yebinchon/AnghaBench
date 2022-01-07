
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ border_style_t ;
struct TYPE_5__ {scalar_t__ border_style; int current_border_width; int * window; } ;
typedef TYPE_1__ Con ;


 int A__MOTIF_WM_HINTS ;
 scalar_t__ BS_NORMAL ;
 int DLOG (char*,TYPE_1__*,scalar_t__) ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 TYPE_1__* con_by_window_id (int ) ;
 int con_set_border_style (TYPE_1__*,scalar_t__,int ) ;
 int croot ;
 int window_update_motif_hints (int *,int *,scalar_t__*) ;
 int x_push_changes (int ) ;
 int * xcb_get_property_reply (int *,int ,int *) ;
 int xcb_get_property_unchecked (int *,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static bool handle_motif_hints_change(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                                      xcb_atom_t name, xcb_get_property_reply_t *prop) {
    Con *con;
    if ((con = con_by_window_id(window)) == ((void*)0) || con->window == ((void*)0))
        return 0;

    if (prop == ((void*)0)) {
        prop = xcb_get_property_reply(conn, xcb_get_property_unchecked(conn, 0, window, A__MOTIF_WM_HINTS, XCB_GET_PROPERTY_TYPE_ANY, 0, 5 * sizeof(uint64_t)),
                                      ((void*)0));

        if (prop == ((void*)0))
            return 0;
    }

    border_style_t motif_border_style;
    window_update_motif_hints(con->window, prop, &motif_border_style);

    if (motif_border_style != con->border_style && motif_border_style != BS_NORMAL) {
        DLOG("Update border style of con %p to %d\n", con, motif_border_style);
        con_set_border_style(con, motif_border_style, con->current_border_width);

        x_push_changes(croot);
    }

    return 1;
}
