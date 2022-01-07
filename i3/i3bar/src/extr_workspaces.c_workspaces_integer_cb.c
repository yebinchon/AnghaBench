
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct workspaces_json_params {int cur_key; TYPE_2__* workspaces_walk; } ;
struct TYPE_3__ {int x; int y; int w; int h; } ;
struct TYPE_4__ {int num; TYPE_1__ rect; } ;


 int FREE (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int workspaces_integer_cb(void *params_, long long val) {
    struct workspaces_json_params *params = (struct workspaces_json_params *)params_;

    if (!strcmp(params->cur_key, "num")) {
        params->workspaces_walk->num = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "x")) {
        params->workspaces_walk->rect.x = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "y")) {
        params->workspaces_walk->rect.y = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "width")) {
        params->workspaces_walk->rect.w = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "height")) {
        params->workspaces_walk->rect.h = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    FREE(params->cur_key);
    return 0;
}
