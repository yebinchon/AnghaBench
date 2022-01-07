
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xcb_shape_sk_t ;
struct con_state {int dummy; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_11__ {TYPE_2__* window; TYPE_1__ frame; } ;
struct TYPE_10__ {int shaped; int input_shaped; } ;
typedef TYPE_3__ Con ;


 int ELOG (char*,TYPE_3__*) ;


 scalar_t__ con_is_floating (TYPE_3__*) ;
 int conn ;
 struct con_state* state_for_frame (int ) ;
 int x_shape_frame (TYPE_3__*,int) ;
 int x_unshape_frame (TYPE_3__*,int) ;
 int xcb_flush (int ) ;

void x_set_shape(Con *con, xcb_shape_sk_t kind, bool enable) {
    struct con_state *state;
    if ((state = state_for_frame(con->frame.id)) == ((void*)0)) {
        ELOG("window state for con %p not found\n", con);
        return;
    }

    switch (kind) {
        case 129:
            con->window->shaped = enable;
            break;
        case 128:
            con->window->input_shaped = enable;
            break;
        default:
            ELOG("Received unknown shape event kind for con %p. This is a bug.\n",
                 con);
            return;
    }

    if (con_is_floating(con)) {
        if (enable) {
            x_shape_frame(con, kind);
        } else {
            x_unshape_frame(con, kind);
        }

        xcb_flush(conn);
    }
}
