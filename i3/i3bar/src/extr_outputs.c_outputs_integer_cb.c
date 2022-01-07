
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct outputs_json_params {int cur_key; TYPE_2__* outputs_walk; } ;
struct TYPE_3__ {int x; int y; int w; int h; } ;
struct TYPE_4__ {int ws; TYPE_1__ rect; } ;


 int FREE (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int outputs_integer_cb(void *params_, long long val) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;

    if (!strcmp(params->cur_key, "current_workspace")) {
        params->outputs_walk->ws = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "x")) {
        params->outputs_walk->rect.x = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "y")) {
        params->outputs_walk->rect.y = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "width")) {
        params->outputs_walk->rect.w = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "height")) {
        params->outputs_walk->rect.h = (int)val;
        FREE(params->cur_key);
        return 1;
    }

    return 0;
}
