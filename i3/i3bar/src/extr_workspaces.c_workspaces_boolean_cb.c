
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workspaces_json_params {int cur_key; TYPE_1__* workspaces_walk; } ;
struct TYPE_2__ {int visible; int focused; int urgent; } ;


 int FREE (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int workspaces_boolean_cb(void *params_, int val) {
    struct workspaces_json_params *params = (struct workspaces_json_params *)params_;

    if (!strcmp(params->cur_key, "visible")) {
        params->workspaces_walk->visible = val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "focused")) {
        params->workspaces_walk->focused = val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "urgent")) {
        params->workspaces_walk->urgent = val;
        FREE(params->cur_key);
        return 1;
    }

    FREE(params->cur_key);

    return 0;
}
