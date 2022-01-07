
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ type; scalar_t__ scratchpad_state; struct TYPE_15__* parent; int focus_head; int name; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 int LOG (char*,int ) ;
 scalar_t__ SCRATCHPAD_CHANGED ;
 scalar_t__ SCRATCHPAD_FRESH ;
 scalar_t__ SCRATCHPAD_NONE ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int con_disable_fullscreen (TYPE_1__*) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 TYPE_1__* con_inside_floating (TYPE_1__*) ;
 int con_move_to_workspace (TYPE_1__*,TYPE_1__*,int,int,int) ;
 int floating_enable (TYPE_1__*,int) ;
 int focused ;
 TYPE_1__* workspace_get (char*,int *) ;

void scratchpad_move(Con *con) {
    if (con->type == CT_WORKSPACE) {
        LOG("'move scratchpad' used on a workspace \"%s\". Calling it "
            "recursively on all windows on this workspace.\n",
            con->name);
        Con *current;
        current = TAILQ_FIRST(&(con->focus_head));
        while (current) {
            Con *next = TAILQ_NEXT(current, focused);
            scratchpad_move(current);
            current = next;
        }
        return;
    }
    DLOG("should move con %p to __i3_scratch\n", con);

    Con *__i3_scratch = workspace_get("__i3_scratch", ((void*)0));
    if (con_get_workspace(con) == __i3_scratch) {
        DLOG("This window is already on __i3_scratch.\n");
        return;
    }



    con_disable_fullscreen(con);





    Con *maybe_floating_con = con_inside_floating(con);
    if (maybe_floating_con == ((void*)0)) {
        floating_enable(con, 0);
        con = con->parent;
    } else {
        con = maybe_floating_con;
    }



    con_move_to_workspace(con, __i3_scratch, 1, 1, 0);




    if (con->scratchpad_state == SCRATCHPAD_NONE) {
        DLOG("This window was never used as a scratchpad before.\n");
        if (con == maybe_floating_con) {
            DLOG("It was in floating mode before, set scratchpad state to changed.\n");
            con->scratchpad_state = SCRATCHPAD_CHANGED;
        } else {
            DLOG("It was in tiling mode before, set scratchpad state to fresh.\n");
            con->scratchpad_state = SCRATCHPAD_FRESH;
        }
    }
}
