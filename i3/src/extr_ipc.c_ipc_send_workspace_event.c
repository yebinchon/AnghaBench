
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ylength ;
typedef int yajl_gen ;
typedef int Con ;


 int I3_IPC_EVENT_WORKSPACE ;
 int free ;
 int get_buf ;
 int ipc_marshal_workspace_event (char const*,int *,int *) ;
 int ipc_send_event (char*,int ,char const*) ;
 int y (int ,...) ;

void ipc_send_workspace_event(const char *change, Con *current, Con *old) {
    yajl_gen gen = ipc_marshal_workspace_event(change, current, old);

    const unsigned char *payload;
    ylength length;
    y(get_buf, &payload, &length);

    ipc_send_event("workspace", I3_IPC_EVENT_WORKSPACE, (const char *)payload);

    y(free);
}
