
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_ws; } ;


 int I3_IPC_MESSAGE_TYPE_SUBSCRIBE ;
 TYPE_1__ config ;
 int i3_send_msg (int ,char*) ;

void subscribe_events(void) {
    if (config.disable_ws) {
        i3_send_msg(I3_IPC_MESSAGE_TYPE_SUBSCRIBE, "[ \"output\", \"mode\", \"barconfig_update\" ]");
    } else {
        i3_send_msg(I3_IPC_MESSAGE_TYPE_SUBSCRIBE, "[ \"workspace\", \"output\", \"mode\", \"barconfig_update\" ]");
    }
}
