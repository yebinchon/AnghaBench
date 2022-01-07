
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ layout_t ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ layout; scalar_t__ last_split_layout; int nodes_head; struct TYPE_15__* parent; scalar_t__ workspace_layout; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 scalar_t__ L_DEFAULT ;
 scalar_t__ L_SPLITH ;
 scalar_t__ L_SPLITV ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 int con_detach (TYPE_1__*) ;
 int con_force_split_parents_redraw (TYPE_1__*) ;
 TYPE_1__* con_new (int *,int *) ;
 scalar_t__ con_num_children (TYPE_1__*) ;
 int croot ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_focus_order (TYPE_1__*) ;
 int set_focus_order (TYPE_1__*,TYPE_1__**) ;
 int tree_flatten (int ) ;

void con_set_layout(Con *con, layout_t layout) {
    DLOG("con_set_layout(%p, %d), con->type = %d\n",
         con, layout, con->type);




    if (con->type != CT_WORKSPACE)
        con = con->parent;




    if (con->layout == L_SPLITH || con->layout == L_SPLITV)
        con->last_split_layout = con->layout;





    if (con->type == CT_WORKSPACE) {
        if (con_num_children(con) == 0) {
            layout_t ws_layout = (layout == L_STACKED || layout == L_TABBED) ? layout : L_DEFAULT;
            DLOG("Setting workspace_layout to %d\n", ws_layout);
            con->workspace_layout = ws_layout;
            DLOG("Setting layout to %d\n", layout);
            con->layout = layout;
        } else if (layout == L_STACKED || layout == L_TABBED || layout == L_SPLITV || layout == L_SPLITH) {
            DLOG("Creating new split container\n");

            Con *new = con_new(((void*)0), ((void*)0));
            new->parent = con;



            new->layout = layout;
            new->last_split_layout = con->last_split_layout;


            Con **focus_order = get_focus_order(con);

            DLOG("Moving cons\n");
            Con *child;
            while (!TAILQ_EMPTY(&(con->nodes_head))) {
                child = TAILQ_FIRST(&(con->nodes_head));
                con_detach(child);
                con_attach(child, new, 1);
            }

            set_focus_order(new, focus_order);
            free(focus_order);


            DLOG("Attaching new split to ws\n");
            con_attach(new, con, 0);

            tree_flatten(croot);
        }
        con_force_split_parents_redraw(con);
        return;
    }

    if (layout == L_DEFAULT) {





        con->layout = con->last_split_layout;

        if (con->layout == L_DEFAULT)
            con->layout = L_SPLITH;
    } else {
        con->layout = layout;
    }
    con_force_split_parents_redraw(con);
}
