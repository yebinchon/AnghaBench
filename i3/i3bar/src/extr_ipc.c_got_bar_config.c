
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command; int colors; int fontname; int disable_ws; } ;


 int DLOG (char*,char*) ;
 int I3_IPC_MESSAGE_TYPE_GET_OUTPUTS ;
 int I3_IPC_MESSAGE_TYPE_GET_WORKSPACES ;
 TYPE_1__ config ;
 int free_colors (int *) ;
 int i3_send_msg (int ,int *) ;
 int init_colors (int *) ;
 int init_xcb_late (int ) ;
 int parse_config_json (char*) ;
 int start_child (int ) ;
 int subscribe_events () ;

__attribute__((used)) static void got_bar_config(char *reply) {
    DLOG("Received bar config \"%s\"\n", reply);



    i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_OUTPUTS, ((void*)0));

    free_colors(&(config.colors));
    parse_config_json(reply);



    subscribe_events();
    if (!config.disable_ws)
        i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_WORKSPACES, ((void*)0));


    init_xcb_late(config.fontname);


    init_colors(&(config.colors));

    start_child(config.command);
}
