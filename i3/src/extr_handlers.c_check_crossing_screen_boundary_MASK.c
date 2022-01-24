#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ disable_focus_follows_mouse; } ;
struct TYPE_4__ {int /*<<< orphan*/ * con; } ;
typedef  TYPE_1__ Output ;
typedef  int /*<<< orphan*/  Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/ * focused ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uint32_t x, uint32_t y) {
    Output *output;

    /* If the user disable focus follows mouse, we have nothing to do here */
    if (config.disable_focus_follows_mouse)
        return;

    if ((output = FUNC4(x, y)) == NULL) {
        FUNC0("ERROR: No such screen\n");
        return;
    }

    if (output->con == NULL) {
        FUNC0("ERROR: The screen is not recognized by i3 (no container associated)\n");
        return;
    }

    /* Focus the output on which the user moved their cursor */
    Con *old_focused = focused;
    Con *next = FUNC1(FUNC5(output->con));
    /* Since we are switching outputs, this *must* be a different workspace, so
     * call workspace_show() */
    FUNC7(FUNC3(next));
    FUNC2(next);

    /* If the focus changed, we re-render to get updated decorations */
    if (old_focused != focused)
        FUNC6();
}