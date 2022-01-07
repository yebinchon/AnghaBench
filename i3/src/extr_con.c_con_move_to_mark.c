
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ type; int focus_head; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int _con_move_to_con (TYPE_1__*,TYPE_1__*,int,int,int,int,int) ;
 TYPE_1__* con_by_mark (char const*) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 scalar_t__ con_has_parent (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ con_is_floating (TYPE_1__*) ;
 scalar_t__ con_is_leaf (TYPE_1__*) ;
 scalar_t__ con_is_split (TYPE_1__*) ;
 int con_move_to_workspace (TYPE_1__*,TYPE_1__*,int,int,int) ;
 int scratchpad_move (TYPE_1__*) ;
 scalar_t__ workspace_get (char*,int *) ;

bool con_move_to_mark(Con *con, const char *mark) {
    Con *target = con_by_mark(mark);
    if (target == ((void*)0)) {
        DLOG("found no container with mark \"%s\"\n", mark);
        return 0;
    }


    if (con_get_workspace(target) == workspace_get("__i3_scratch", ((void*)0))) {
        DLOG("target container is in the scratchpad, moving container to scratchpad.\n");
        scratchpad_move(con);
        return 1;
    }


    if (con_is_floating(target)) {
        DLOG("target container is floating, moving container to target's workspace.\n");
        con_move_to_workspace(con, con_get_workspace(target), 1, 0, 0);
        return 1;
    }

    if (target->type == CT_WORKSPACE && con_is_leaf(target)) {
        DLOG("target container is an empty workspace, simply moving the container there.\n");
        con_move_to_workspace(con, target, 1, 0, 0);
        return 1;
    }




    if (con_is_split(target)) {
        DLOG("target is a split container, descending to the currently focused child.\n");
        target = TAILQ_FIRST(&(target->focus_head));
    }

    if (con == target || con_has_parent(target, con)) {
        DLOG("cannot move the container to or inside itself, aborting.\n");
        return 0;
    }

    return _con_move_to_con(con, target, 0, 1, 0, 0, 1);
}
