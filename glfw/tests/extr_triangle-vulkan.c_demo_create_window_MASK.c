#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct demo {int /*<<< orphan*/  window; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_LONG_NAME ; 
 int /*<<< orphan*/  GLFW_CLIENT_API ; 
 int /*<<< orphan*/  GLFW_NO_API ; 
 int /*<<< orphan*/  demo_key_callback ; 
 int /*<<< orphan*/  demo_refresh_callback ; 
 int /*<<< orphan*/  demo_resize_callback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct demo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC9(struct demo *demo) {
    FUNC7(GLFW_CLIENT_API, GLFW_NO_API);

    demo->window = FUNC2(demo->width,
                                    demo->height,
                                    APP_LONG_NAME,
                                    NULL,
                                    NULL);
    if (!demo->window) {
        // It didn't work, so try to give a useful error:
        FUNC8("Cannot create a window in which to draw!\n");
        FUNC1(stdout);
        FUNC0(1);
    }

    FUNC6(demo->window, demo);
    FUNC5(demo->window, demo_refresh_callback);
    FUNC3(demo->window, demo_resize_callback);
    FUNC4(demo->window, demo_key_callback);
}