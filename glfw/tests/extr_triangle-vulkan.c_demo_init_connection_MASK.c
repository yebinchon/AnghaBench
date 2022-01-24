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
struct demo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  demo_error_callback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glad_vulkan_callback ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC7(struct demo *demo) {
    FUNC4(demo_error_callback);

    if (!FUNC3()) {
        FUNC6("Cannot initialize GLFW.\nExiting ...\n");
        FUNC1(stdout);
        FUNC0(1);
    }

    if (!FUNC5()) {
        FUNC6("GLFW failed to find the Vulkan loader.\nExiting ...\n");
        FUNC1(stdout);
        FUNC0(1);
    }

    FUNC2(NULL, glad_vulkan_callback, NULL);
}