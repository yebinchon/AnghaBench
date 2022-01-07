
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disable_ws; } ;


 int DLOG (char*) ;
 int I3_IPC_MESSAGE_TYPE_GET_OUTPUTS ;
 int I3_IPC_MESSAGE_TYPE_GET_WORKSPACES ;
 TYPE_1__ config ;
 int i3_send_msg (int ,int *) ;

__attribute__((used)) static void got_output_event(char *event) {
    DLOG("Got output event!\n");
    i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_OUTPUTS, ((void*)0));
    if (!config.disable_ws) {
        i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_WORKSPACES, ((void*)0));
    }
}
