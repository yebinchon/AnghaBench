
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int surface_t ;
struct ws_head {int dummy; } ;
struct tc_head {int dummy; } ;
struct outputs_json_params {int in_rect; int * cur_key; TYPE_1__* outputs_walk; } ;
typedef int rect ;
struct TYPE_2__ {int active; int primary; int visible; int statusline_short_text; void* trayclients; void* workspaces; int statusline_buffer; int buffer; int bar; int rect; scalar_t__ statusline_width; scalar_t__ ws; int * name; } ;
typedef TYPE_1__ i3_output ;


 int TAILQ_INIT (void*) ;
 int memset (int *,int ,int) ;
 void* smalloc (int) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static int outputs_start_map_cb(void *params_) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;
    i3_output *new_output = ((void*)0);

    if (params->cur_key == ((void*)0)) {
        new_output = smalloc(sizeof(i3_output));
        new_output->name = ((void*)0);
        new_output->active = 0;
        new_output->primary = 0;
        new_output->visible = 0;
        new_output->ws = 0,
        new_output->statusline_width = 0;
        new_output->statusline_short_text = 0;
        memset(&new_output->rect, 0, sizeof(rect));
        memset(&new_output->bar, 0, sizeof(surface_t));
        memset(&new_output->buffer, 0, sizeof(surface_t));
        memset(&new_output->statusline_buffer, 0, sizeof(surface_t));

        new_output->workspaces = smalloc(sizeof(struct ws_head));
        TAILQ_INIT(new_output->workspaces);

        new_output->trayclients = smalloc(sizeof(struct tc_head));
        TAILQ_INIT(new_output->trayclients);

        params->outputs_walk = new_output;

        return 1;
    }

    if (!strcmp(params->cur_key, "rect")) {
        params->in_rect = 1;
    }

    return 1;
}
