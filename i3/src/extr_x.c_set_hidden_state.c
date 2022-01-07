
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int is_hidden; } ;
typedef TYPE_3__ con_state ;
struct TYPE_9__ {int id; } ;
struct TYPE_12__ {TYPE_2__* window; TYPE_1__ frame; } ;
struct TYPE_10__ {int id; } ;
typedef TYPE_4__ Con ;


 int A__NET_WM_STATE ;
 int A__NET_WM_STATE_HIDDEN ;
 int DLOG (char*,TYPE_4__*) ;
 int con_is_hidden (TYPE_4__*) ;
 int conn ;
 TYPE_3__* state_for_frame (int ) ;
 int xcb_add_property_atom (int ,int ,int ,int ) ;
 int xcb_remove_property_atom (int ,int ,int ,int ) ;

__attribute__((used)) static void set_hidden_state(Con *con) {
    if (con->window == ((void*)0)) {
        return;
    }

    con_state *state = state_for_frame(con->frame.id);
    bool should_be_hidden = con_is_hidden(con);
    if (should_be_hidden == state->is_hidden)
        return;

    if (should_be_hidden) {
        DLOG("setting _NET_WM_STATE_HIDDEN for con = %p\n", con);
        xcb_add_property_atom(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_HIDDEN);
    } else {
        DLOG("removing _NET_WM_STATE_HIDDEN for con = %p\n", con);
        xcb_remove_property_atom(conn, con->window->id, A__NET_WM_STATE, A__NET_WM_STATE_HIDDEN);
    }

    state->is_hidden = should_be_hidden;
}
