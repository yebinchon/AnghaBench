
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct con_state {int need_reparent; int old_frame; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
typedef TYPE_2__ Con ;


 int ELOG (char*) ;
 struct con_state* state_for_frame (int ) ;

void x_reparent_child(Con *con, Con *old) {
    struct con_state *state;
    if ((state = state_for_frame(con->frame.id)) == ((void*)0)) {
        ELOG("window state for con not found\n");
        return;
    }

    state->need_reparent = 1;
    state->old_frame = old->frame.id;
}
