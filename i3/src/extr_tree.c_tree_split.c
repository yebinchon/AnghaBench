
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ orientation_t ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ layout; double percent; struct TYPE_13__* parent; int focus_head; int nodes_head; int workspace_layout; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 scalar_t__ HORIZ ;
 int L_DEFAULT ;
 scalar_t__ L_SPLITH ;
 scalar_t__ L_SPLITV ;
 int TAILQ_REPLACE (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 int con_force_split_parents_redraw (TYPE_1__*) ;
 scalar_t__ con_is_floating (TYPE_1__*) ;
 TYPE_1__* con_new (int *,int *) ;
 int con_num_children (TYPE_1__*) ;
 int focused ;
 int nodes ;
 TYPE_1__* workspace_encapsulate (TYPE_1__*) ;

void tree_split(Con *con, orientation_t orientation) {
    if (con_is_floating(con)) {
        DLOG("Floating containers can't be split.\n");
        return;
    }

    if (con->type == CT_WORKSPACE) {
        if (con_num_children(con) < 2) {
            if (con_num_children(con) == 0) {
                DLOG("Changing workspace_layout to L_DEFAULT\n");
                con->workspace_layout = L_DEFAULT;
            }
            DLOG("Changing orientation of workspace\n");
            con->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
            return;
        } else {


            con = workspace_encapsulate(con);
        }
    }

    Con *parent = con->parent;


    con_force_split_parents_redraw(con);




    if (con_num_children(parent) == 1 &&
        (parent->layout == L_SPLITH ||
         parent->layout == L_SPLITV)) {
        parent->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
        DLOG("Just changing orientation of existing container\n");
        return;
    }

    DLOG("Splitting in orientation %d\n", orientation);


    Con *new = con_new(((void*)0), ((void*)0));
    TAILQ_REPLACE(&(parent->nodes_head), con, new, nodes);
    TAILQ_REPLACE(&(parent->focus_head), con, new, focused);
    new->parent = parent;
    new->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;


    new->percent = con->percent;
    con->percent = 0.0;


    con_attach(con, new, 0);
}
