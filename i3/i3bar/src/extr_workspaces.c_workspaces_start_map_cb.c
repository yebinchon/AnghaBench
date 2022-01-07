
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct workspaces_json_params {TYPE_1__* workspaces_walk; int * cur_key; } ;
typedef int rect ;
struct TYPE_3__ {int num; int * output; int rect; scalar_t__ urgent; scalar_t__ focused; scalar_t__ visible; int * name; } ;
typedef TYPE_1__ i3_ws ;


 int memset (int *,int ,int) ;
 TYPE_1__* smalloc (int) ;

__attribute__((used)) static int workspaces_start_map_cb(void *params_) {
    struct workspaces_json_params *params = (struct workspaces_json_params *)params_;

    i3_ws *new_workspace = ((void*)0);

    if (params->cur_key == ((void*)0)) {
        new_workspace = smalloc(sizeof(i3_ws));
        new_workspace->num = -1;
        new_workspace->name = ((void*)0);
        new_workspace->visible = 0;
        new_workspace->focused = 0;
        new_workspace->urgent = 0;
        memset(&new_workspace->rect, 0, sizeof(rect));
        new_workspace->output = ((void*)0);

        params->workspaces_walk = new_workspace;
        return 1;
    }

    return 1;
}
