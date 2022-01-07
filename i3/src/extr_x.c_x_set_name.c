
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct con_state {int name; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef TYPE_2__ Con ;


 int ELOG (char*) ;
 int FREE (int ) ;
 int sstrdup (char const*) ;
 struct con_state* state_for_frame (int ) ;

void x_set_name(Con *con, const char *name) {
    struct con_state *state;

    if ((state = state_for_frame(con->frame.id)) == ((void*)0)) {
        ELOG("window state not found\n");
        return;
    }

    FREE(state->name);
    state->name = sstrdup(name);
}
