
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scratchpad_state; int rect; } ;
typedef int Rect ;
typedef TYPE_1__ Con ;


 int ELOG (char*) ;
 scalar_t__ SCRATCHPAD_CHANGED ;
 scalar_t__ SCRATCHPAD_FRESH ;
 int floating_maybe_reassign_ws (TYPE_1__*) ;
 int output_containing_rect (int ) ;
 int tree_render () ;

bool floating_reposition(Con *con, Rect newrect) {


    if (!output_containing_rect(newrect)) {
        ELOG("No output found at destination coordinates. Not repositioning.\n");
        return 0;
    }

    con->rect = newrect;

    bool reassigned = floating_maybe_reassign_ws(con);


    if (con->scratchpad_state == SCRATCHPAD_FRESH)
        con->scratchpad_state = SCRATCHPAD_CHANGED;


    if (!reassigned) {
        tree_render();
    }
    return 1;
}
