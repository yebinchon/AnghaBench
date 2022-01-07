
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct con_state {scalar_t__ was_floating; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {TYPE_1__* window; TYPE_2__ frame; } ;
struct TYPE_9__ {scalar_t__ input_shaped; scalar_t__ shaped; } ;
typedef TYPE_3__ Con ;


 int ELOG (char*,TYPE_3__*) ;
 int XCB_SHAPE_SK_BOUNDING ;
 int XCB_SHAPE_SK_INPUT ;
 scalar_t__ con_is_floating (TYPE_3__*) ;
 int shape_supported ;
 struct con_state* state_for_frame (int ) ;
 int x_shape_frame (TYPE_3__*,int ) ;
 int x_unshape_frame (TYPE_3__*,int ) ;

__attribute__((used)) static void set_shape_state(Con *con, bool need_reshape) {
    if (!shape_supported || con->window == ((void*)0)) {
        return;
    }

    struct con_state *state;
    if ((state = state_for_frame(con->frame.id)) == ((void*)0)) {
        ELOG("window state for con %p not found\n", con);
        return;
    }

    if (need_reshape && con_is_floating(con)) {

        if (con->window->shaped) {
            x_shape_frame(con, XCB_SHAPE_SK_BOUNDING);
        }
        if (con->window->input_shaped) {
            x_shape_frame(con, XCB_SHAPE_SK_INPUT);
        }
    }

    if (state->was_floating && !con_is_floating(con)) {

        if (con->window->shaped) {
            x_unshape_frame(con, XCB_SHAPE_SK_BOUNDING);
        }
        if (con->window->input_shaped) {
            x_unshape_frame(con, XCB_SHAPE_SK_INPUT);
        }
    }
}
