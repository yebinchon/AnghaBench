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
typedef  int /*<<< orphan*/  Output ;

/* Variables and functions */
 int /*<<< orphan*/  D_DOWN ; 
 int /*<<< orphan*/  D_LEFT ; 
 int /*<<< orphan*/  D_RIGHT ; 
 int /*<<< orphan*/  D_UP ; 
 int /*<<< orphan*/  focused ; 
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

Output *FUNC4(Output *current_output, const char *output_str) {
    if (FUNC3(output_str, "current") == 0) {
        return FUNC1(focused);
    } else if (FUNC3(output_str, "left") == 0) {
        return FUNC2(D_LEFT, current_output);
    } else if (FUNC3(output_str, "right") == 0) {
        return FUNC2(D_RIGHT, current_output);
    } else if (FUNC3(output_str, "up") == 0) {
        return FUNC2(D_UP, current_output);
    } else if (FUNC3(output_str, "down") == 0) {
        return FUNC2(D_DOWN, current_output);
    }

    return FUNC0(output_str, true);
}