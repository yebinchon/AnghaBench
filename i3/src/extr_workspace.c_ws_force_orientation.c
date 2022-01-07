
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ orientation_t ;
struct TYPE_16__ {struct TYPE_16__* layout; int nodes_head; struct TYPE_16__* parent; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*,...) ;
 scalar_t__ HORIZ ;
 TYPE_1__* L_SPLITH ;
 TYPE_1__* L_SPLITV ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 int con_detach (TYPE_1__*) ;
 int con_fix_percent (TYPE_1__*) ;
 TYPE_1__* con_new (int *,int *) ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_focus_order (TYPE_1__*) ;
 int set_focus_order (TYPE_1__*,TYPE_1__**) ;

void ws_force_orientation(Con *ws, orientation_t orientation) {

    Con *split = con_new(((void*)0), ((void*)0));
    split->parent = ws;


    split->layout = ws->layout;


    Con **focus_order = get_focus_order(ws);

    DLOG("Moving cons\n");
    while (!TAILQ_EMPTY(&(ws->nodes_head))) {
        Con *child = TAILQ_FIRST(&(ws->nodes_head));
        con_detach(child);
        con_attach(child, split, 1);
    }

    set_focus_order(split, focus_order);
    free(focus_order);


    ws->layout = (orientation == HORIZ) ? L_SPLITH : L_SPLITV;
    DLOG("split->layout = %d, ws->layout = %d\n", split->layout, ws->layout);


    DLOG("Attaching new split (%p) to ws (%p)\n", split, ws);
    con_attach(split, ws, 0);


    con_fix_percent(ws);
}
