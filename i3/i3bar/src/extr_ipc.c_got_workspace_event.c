
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*) ;
 int I3_IPC_MESSAGE_TYPE_GET_WORKSPACES ;
 int i3_send_msg (int ,int *) ;

__attribute__((used)) static void got_workspace_event(char *event) {
    DLOG("Got workspace event!\n");
    i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_WORKSPACES, ((void*)0));
}
