
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int urgent; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*,int,int) ;
 int get_urgency_flag (TYPE_1__*) ;
 int ipc_send_workspace_event (char*,TYPE_1__*,int *) ;

void workspace_update_urgent_flag(Con *ws) {
    bool old_flag = ws->urgent;
    ws->urgent = get_urgency_flag(ws);
    DLOG("Workspace urgency flag changed from %d to %d\n", old_flag, ws->urgent);

    if (old_flag != ws->urgent)
        ipc_send_workspace_event("urgent", ws, ((void*)0));
}
