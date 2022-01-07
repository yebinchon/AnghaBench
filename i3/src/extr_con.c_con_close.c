
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int kill_window_t ;
struct TYPE_8__ {scalar_t__ type; int focus_head; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_OUTPUT ;
 scalar_t__ CT_ROOT ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,TYPE_1__*,...) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int assert (int ) ;
 int focused ;
 int tree_close_internal (TYPE_1__*,int ,int) ;

void con_close(Con *con, kill_window_t kill_window) {
    assert(con != ((void*)0));
    DLOG("Closing con = %p.\n", con);


    if (con->type == CT_OUTPUT || con->type == CT_ROOT) {
        DLOG("con = %p is of type %d, not closing anything.\n", con, con->type);
        return;
    }

    if (con->type == CT_WORKSPACE) {
        DLOG("con = %p is a workspace, closing all children instead.\n", con);
        Con *child, *nextchild;
        for (child = TAILQ_FIRST(&(con->focus_head)); child;) {
            nextchild = TAILQ_NEXT(child, focused);
            DLOG("killing child = %p.\n", child);
            tree_close_internal(child, kill_window, 0);
            child = nextchild;
        }

        return;
    }

    tree_close_internal(con, kill_window, 0);
}
