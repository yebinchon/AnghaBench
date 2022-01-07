
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bar_display_mode_t ;
struct TYPE_2__ {scalar_t__ hide_on_modifier; scalar_t__ command; int colors; int fontname; int bar_id; } ;


 int DLOG (char*,char*) ;
 int FREE (char*) ;
 int I3_IPC_MESSAGE_TYPE_GET_OUTPUTS ;
 TYPE_1__ config ;
 int draw_bars (int) ;
 int free (char*) ;
 int free_colors (int *) ;
 int i3_send_msg (int ,int *) ;
 int init_colors (int *) ;
 int init_xcb_late (int ) ;
 int kill_child () ;
 int parse_config_json (char*) ;
 int reconfig_windows (int) ;
 int sasprintf (char**,char*,int ) ;
 char* sstrdup (scalar_t__) ;
 int start_child (scalar_t__) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void got_bar_config_update(char *event) {

    char *expected_id;
    sasprintf(&expected_id, "\"id\":\"%s\"", config.bar_id);
    char *found_id = strstr(event, expected_id);
    FREE(expected_id);
    if (found_id == ((void*)0))
        return;


    i3_send_msg(I3_IPC_MESSAGE_TYPE_GET_OUTPUTS, ((void*)0));

    free_colors(&(config.colors));


    DLOG("Received bar config update \"%s\"\n", event);
    char *old_command = config.command ? sstrdup(config.command) : ((void*)0);
    bar_display_mode_t old_mode = config.hide_on_modifier;
    parse_config_json(event);
    if (old_mode != config.hide_on_modifier) {
        reconfig_windows(1);
    }


    init_xcb_late(config.fontname);
    init_colors(&(config.colors));


    if (old_command && strcmp(old_command, config.command) != 0) {
        kill_child();
        start_child(config.command);
    }
    free(old_command);

    draw_bars(0);
}
