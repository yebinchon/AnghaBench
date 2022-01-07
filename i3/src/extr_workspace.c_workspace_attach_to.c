
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ workspace_layout; scalar_t__ layout; struct TYPE_8__* parent; struct TYPE_8__* name; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*,...) ;
 scalar_t__ L_DEFAULT ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 int con_fix_percent (TYPE_1__*) ;
 TYPE_1__* con_new (int *,int *) ;

Con *workspace_attach_to(Con *ws) {
    DLOG("Attaching a window to workspace %p / %s\n", ws, ws->name);

    if (ws->workspace_layout == L_DEFAULT) {
        DLOG("Default layout, just attaching it to the workspace itself.\n");
        return ws;
    }

    DLOG("Non-default layout, creating a new split container\n");

    Con *new = con_new(((void*)0), ((void*)0));
    new->parent = ws;


    new->layout = ws->workspace_layout;


    DLOG("Attaching new split %p to workspace %p\n", new, ws);
    con_attach(new, ws, 0);


    con_fix_percent(ws);

    return new;
}
