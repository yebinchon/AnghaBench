
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int nodes_head; int name; int layout; struct TYPE_17__* parent; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*,TYPE_1__*,int ,TYPE_1__*) ;
 int ELOG (char*,TYPE_1__*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 int con_detach (TYPE_1__*) ;
 TYPE_1__* con_new (int *,int *) ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_focus_order (TYPE_1__*) ;
 int set_focus_order (TYPE_1__*,TYPE_1__**) ;

Con *workspace_encapsulate(Con *ws) {
    if (TAILQ_EMPTY(&(ws->nodes_head))) {
        ELOG("Workspace %p / %s has no children to encapsulate\n", ws, ws->name);
        return ((void*)0);
    }

    Con *new = con_new(((void*)0), ((void*)0));
    new->parent = ws;
    new->layout = ws->layout;

    Con **focus_order = get_focus_order(ws);

    DLOG("Moving children of workspace %p / %s into container %p\n",
         ws, ws->name, new);
    Con *child;
    while (!TAILQ_EMPTY(&(ws->nodes_head))) {
        child = TAILQ_FIRST(&(ws->nodes_head));
        con_detach(child);
        con_attach(child, new, 1);
    }

    set_focus_order(new, focus_order);
    free(focus_order);

    con_attach(new, ws, 1);

    return new;
}
