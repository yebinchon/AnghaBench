
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*) ;
 int draw_bars (int) ;
 int parse_workspaces_json (char*) ;

__attribute__((used)) static void got_workspace_reply(char *reply) {
    DLOG("Got workspace data!\n");
    parse_workspaces_json(reply);
    draw_bars(0);
}
