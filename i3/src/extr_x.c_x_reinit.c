
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct con_state {int initial; int child_mapped; int window_rect; TYPE_2__* con; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef int Rect ;
typedef TYPE_2__ Con ;


 int DLOG (char*,struct con_state*) ;
 int ELOG (char*) ;
 int memset (int *,int ,int) ;
 struct con_state* state_for_frame (int ) ;

void x_reinit(Con *con) {
    struct con_state *state;

    if ((state = state_for_frame(con->frame.id)) == ((void*)0)) {
        ELOG("window state not found\n");
        return;
    }

    DLOG("resetting state %p to initial\n", state);
    state->initial = 1;
    state->child_mapped = 0;
    state->con = con;
    memset(&(state->window_rect), 0, sizeof(Rect));
}
