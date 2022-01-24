#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_1__ i3Window ;
struct TYPE_13__ {int /*<<< orphan*/  default_border; } ;
struct TYPE_12__ {int current_border_width; int /*<<< orphan*/  marks_head; int /*<<< orphan*/  swallow_head; int /*<<< orphan*/  focus_head; int /*<<< orphan*/  nodes_head; int /*<<< orphan*/  floating_head; int /*<<< orphan*/  depth; int /*<<< orphan*/  border_style; TYPE_1__* window; int /*<<< orphan*/  type; int /*<<< orphan*/  on_remove_child; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  CT_CON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cons ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  con_on_remove_child ; 
 TYPE_4__ config ; 
 int /*<<< orphan*/  root_depth ; 
 TYPE_2__* FUNC4 (int,int) ; 

Con *FUNC5(Con *parent, i3Window *window) {
    Con *new = FUNC4(1, sizeof(Con));
    new->on_remove_child = con_on_remove_child;
    FUNC2(&all_cons, new, all_cons);
    new->type = CT_CON;
    new->window = window;
    new->border_style = config.default_border;
    new->current_border_width = -1;
    if (window) {
        new->depth = window->depth;
    } else {
        new->depth = root_depth;
    }
    FUNC0("opening window\n");

    FUNC1(&(new->floating_head));
    FUNC1(&(new->nodes_head));
    FUNC1(&(new->focus_head));
    FUNC1(&(new->swallow_head));
    FUNC1(&(new->marks_head));

    if (parent != NULL)
        FUNC3(new, parent, false);

    return new;
}