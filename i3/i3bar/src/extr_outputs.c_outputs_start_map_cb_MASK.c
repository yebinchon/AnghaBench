#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surface_t ;
struct ws_head {int dummy; } ;
struct tc_head {int dummy; } ;
struct outputs_json_params {int in_rect; int /*<<< orphan*/ * cur_key; TYPE_1__* outputs_walk; } ;
typedef  int /*<<< orphan*/  rect ;
struct TYPE_2__ {int active; int primary; int visible; int statusline_short_text; void* trayclients; void* workspaces; int /*<<< orphan*/  statusline_buffer; int /*<<< orphan*/  buffer; int /*<<< orphan*/  bar; int /*<<< orphan*/  rect; scalar_t__ statusline_width; scalar_t__ ws; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ i3_output ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(void *params_) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;
    i3_output *new_output = NULL;

    if (params->cur_key == NULL) {
        new_output = FUNC2(sizeof(i3_output));
        new_output->name = NULL;
        new_output->active = false;
        new_output->primary = false;
        new_output->visible = false;
        new_output->ws = 0,
        new_output->statusline_width = 0;
        new_output->statusline_short_text = false;
        FUNC1(&new_output->rect, 0, sizeof(rect));
        FUNC1(&new_output->bar, 0, sizeof(surface_t));
        FUNC1(&new_output->buffer, 0, sizeof(surface_t));
        FUNC1(&new_output->statusline_buffer, 0, sizeof(surface_t));

        new_output->workspaces = FUNC2(sizeof(struct ws_head));
        FUNC0(new_output->workspaces);

        new_output->trayclients = FUNC2(sizeof(struct tc_head));
        FUNC0(new_output->trayclients);

        params->outputs_walk = new_output;

        return 1;
    }

    if (!FUNC3(params->cur_key, "rect")) {
        params->in_rect = true;
    }

    return 1;
}