
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct outputs_json_params {int in_rect; TYPE_4__* outputs_walk; TYPE_4__* cur_key; } ;
struct TYPE_7__ {int rect; int ws; scalar_t__ primary; int active; } ;
typedef TYPE_1__ i3_output ;
struct TYPE_9__ {char* name; int rect; int ws; scalar_t__ primary; int active; } ;
struct TYPE_8__ {int num_outputs; char** outputs; } ;


 int DLOG (char*,char*) ;
 int FREE (TYPE_4__*) ;
 int SLIST_INSERT_HEAD (int ,TYPE_4__*,int ) ;
 int clear_output (TYPE_4__*) ;
 TYPE_3__ config ;
 TYPE_1__* get_output_by_name (char*) ;
 int outputs ;
 int slist ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static int outputs_end_map_cb(void *params_) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;
    if (params->in_rect) {
        params->in_rect = 0;

        return 1;
    }


    if (config.num_outputs > 0) {
        bool handle_output = 0;
        for (int c = 0; c < config.num_outputs; c++) {
            if (strcasecmp(params->outputs_walk->name, config.outputs[c]) == 0 ||
                (strcasecmp(config.outputs[c], "primary") == 0 &&
                 params->outputs_walk->primary)) {
                handle_output = 1;
                break;
            }
        }
        if (!handle_output) {
            DLOG("Ignoring output \"%s\", not configured to handle it.\n",
                 params->outputs_walk->name);
            clear_output(params->outputs_walk);
            FREE(params->outputs_walk);
            FREE(params->cur_key);
            return 1;
        }
    }

    i3_output *target = get_output_by_name(params->outputs_walk->name);

    if (target == ((void*)0)) {
        SLIST_INSERT_HEAD(outputs, params->outputs_walk, slist);
    } else {
        target->active = params->outputs_walk->active;
        target->primary = params->outputs_walk->primary;
        target->ws = params->outputs_walk->ws;
        target->rect = params->outputs_walk->rect;

        clear_output(params->outputs_walk);
        FREE(params->outputs_walk);
    }
    return 1;
}
