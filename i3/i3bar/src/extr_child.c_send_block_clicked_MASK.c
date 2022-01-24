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
struct TYPE_2__ {int /*<<< orphan*/  click_events; } ;

/* Variables and functions */
 int XCB_MOD_MASK_1 ; 
 int XCB_MOD_MASK_2 ; 
 int XCB_MOD_MASK_3 ; 
 int XCB_MOD_MASK_4 ; 
 int XCB_MOD_MASK_5 ; 
 int XCB_MOD_MASK_CONTROL ; 
 int XCB_MOD_MASK_SHIFT ; 
 TYPE_1__ child ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  gen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(int button, const char *name, const char *instance, int x, int y, int x_rel, int y_rel, int width, int height, int mods) {
    if (!child.click_events) {
        return;
    }

    FUNC0();

    FUNC6(gen);

    if (name) {
        FUNC7("name");
        FUNC7(name);
    }

    if (instance) {
        FUNC7("instance");
        FUNC7(instance);
    }

    FUNC7("button");
    FUNC4(gen, button);

    FUNC7("modifiers");
    FUNC3(gen);
    if (mods & XCB_MOD_MASK_SHIFT)
        FUNC7("Shift");
    if (mods & XCB_MOD_MASK_CONTROL)
        FUNC7("Control");
    if (mods & XCB_MOD_MASK_1)
        FUNC7("Mod1");
    if (mods & XCB_MOD_MASK_2)
        FUNC7("Mod2");
    if (mods & XCB_MOD_MASK_3)
        FUNC7("Mod3");
    if (mods & XCB_MOD_MASK_4)
        FUNC7("Mod4");
    if (mods & XCB_MOD_MASK_5)
        FUNC7("Mod5");
    FUNC2(gen);

    FUNC7("x");
    FUNC4(gen, x);

    FUNC7("y");
    FUNC4(gen, y);

    FUNC7("relative_x");
    FUNC4(gen, x_rel);

    FUNC7("relative_y");
    FUNC4(gen, y_rel);

    FUNC7("width");
    FUNC4(gen, width);

    FUNC7("height");
    FUNC4(gen, height);

    FUNC5(gen);
    FUNC1();
}