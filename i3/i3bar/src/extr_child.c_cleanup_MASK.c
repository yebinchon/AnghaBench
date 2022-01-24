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
typedef  int /*<<< orphan*/  i3bar_child ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child ; 
 int /*<<< orphan*/ * child_sig ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * stdin_io ; 

__attribute__((used)) static void FUNC4(void) {
    if (stdin_io != NULL) {
        FUNC2(main_loop, stdin_io);
        FUNC0(stdin_io);
    }

    if (child_sig != NULL) {
        FUNC1(main_loop, child_sig);
        FUNC0(child_sig);
    }

    FUNC3(&child, 0, sizeof(i3bar_child));
}