
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ type; scalar_t__ layout; int floating_head; int nodes_head; int focus_head; int percent; struct TYPE_15__* parent; int name; int * window; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_CON ;
 int DLOG (char*,...) ;
 int DONT_KILL_WINDOW ;
 scalar_t__ L_OUTPUT ;
 scalar_t__ L_SPLITH ;
 scalar_t__ L_SPLITV ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_BEFORE (TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int con_detach (TYPE_1__*) ;
 int con_is_split (TYPE_1__*) ;
 scalar_t__ con_orientation (TYPE_1__*) ;
 int floating_windows ;
 int focused ;
 int nodes ;
 int tree_close_internal (TYPE_1__*,int ,int) ;

void tree_flatten(Con *con) {
    Con *current, *child, *parent = con->parent;
    DLOG("Checking if I can flatten con = %p / %s\n", con, con->name);


    if (con->type != CT_CON ||
        parent->layout == L_OUTPUT ||
        con->window != ((void*)0))
        goto recurse;


    child = TAILQ_FIRST(&(con->nodes_head));
    if (child == ((void*)0) || TAILQ_NEXT(child, nodes) != ((void*)0))
        goto recurse;

    DLOG("child = %p, con = %p, parent = %p\n", child, con, parent);



    if (!con_is_split(con) ||
        !con_is_split(child) ||
        (con->layout != L_SPLITH && con->layout != L_SPLITV) ||
        (child->layout != L_SPLITH && child->layout != L_SPLITV) ||
        con_orientation(con) == con_orientation(child) ||
        con_orientation(child) != con_orientation(parent))
        goto recurse;

    DLOG("Alright, I have to flatten this situation now. Stay calm.\n");

    Con *focus_next = TAILQ_FIRST(&(child->focus_head));

    DLOG("detaching...\n");

    while (!TAILQ_EMPTY(&(child->nodes_head))) {
        current = TAILQ_FIRST(&(child->nodes_head));
        DLOG("detaching current=%p / %s\n", current, current->name);
        con_detach(current);
        DLOG("re-attaching\n");




        current->parent = parent;
        TAILQ_INSERT_BEFORE(con, current, nodes);
        DLOG("attaching to focus list\n");
        TAILQ_INSERT_TAIL(&(parent->focus_head), current, focused);
        current->percent = con->percent;
    }
    DLOG("re-attached all\n");


    if (focus_next != ((void*)0) &&
        TAILQ_FIRST(&(parent->focus_head)) == con) {
        DLOG("restoring focus to focus_next=%p\n", focus_next);
        TAILQ_REMOVE(&(parent->focus_head), focus_next, focused);
        TAILQ_INSERT_HEAD(&(parent->focus_head), focus_next, focused);
        DLOG("restored focus.\n");
    }


    DLOG("closing redundant cons\n");
    tree_close_internal(con, DONT_KILL_WINDOW, 1);






    return;

recurse:


    current = TAILQ_FIRST(&(con->nodes_head));
    while (current != ((void*)0)) {
        Con *next = TAILQ_NEXT(current, nodes);
        tree_flatten(current);
        current = next;
    }

    current = TAILQ_FIRST(&(con->floating_head));
    while (current != ((void*)0)) {
        Con *next = TAILQ_NEXT(current, floating_windows);
        tree_flatten(current);
        current = next;
    }
}
