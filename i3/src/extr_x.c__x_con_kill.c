
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int name; } ;
typedef TYPE_1__ con_state ;
struct TYPE_13__ {scalar_t__ id; } ;
struct TYPE_12__ {scalar_t__ colormap; TYPE_6__ frame; TYPE_6__ frame_buffer; } ;
typedef TYPE_2__ Con ;


 int CIRCLEQ_REMOVE (int *,TYPE_1__*,TYPE_1__*) ;
 int FREE (int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ XCB_NONE ;
 int conn ;
 int draw_util_surface_free (int ,TYPE_6__*) ;
 scalar_t__ focused_id ;
 int free (TYPE_1__*) ;
 int initial_mapping_head ;
 int initial_mapping_order ;
 scalar_t__ last_focused ;
 TYPE_1__* old_state ;
 int old_state_head ;
 TYPE_1__* state_for_frame (scalar_t__) ;
 int state_head ;
 int xcb_free_colormap (int ,scalar_t__) ;
 int xcb_free_pixmap (int ,scalar_t__) ;

__attribute__((used)) static void _x_con_kill(Con *con) {
    con_state *state;

    if (con->colormap != XCB_NONE) {
        xcb_free_colormap(conn, con->colormap);
    }

    draw_util_surface_free(conn, &(con->frame));
    draw_util_surface_free(conn, &(con->frame_buffer));
    xcb_free_pixmap(conn, con->frame_buffer.id);
    con->frame_buffer.id = XCB_NONE;
    state = state_for_frame(con->frame.id);
    CIRCLEQ_REMOVE(&state_head, state, state);
    CIRCLEQ_REMOVE(&old_state_head, state, old_state);
    TAILQ_REMOVE(&initial_mapping_head, state, initial_mapping_order);
    FREE(state->name);
    free(state);


    if (con->frame.id == focused_id) {
        focused_id = XCB_NONE;
    }
    if (con->frame.id == last_focused) {
        last_focused = XCB_NONE;
    }
}
