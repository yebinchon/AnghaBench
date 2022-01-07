
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct outputs_json_params {int cur_key; TYPE_1__* outputs_walk; } ;
struct TYPE_2__ {int active; int primary; } ;


 int FREE (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int outputs_boolean_cb(void *params_, int val) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;

    if (!strcmp(params->cur_key, "active")) {
        params->outputs_walk->active = val;
        FREE(params->cur_key);
        return 1;
    }

    if (!strcmp(params->cur_key, "primary")) {
        params->outputs_walk->primary = val;
        FREE(params->cur_key);
        return 1;
    }

    return 0;
}
