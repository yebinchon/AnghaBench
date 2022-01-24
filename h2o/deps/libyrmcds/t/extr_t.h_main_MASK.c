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
typedef  int /*<<< orphan*/  yrmcds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ n_failures ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int argc, char** argv) {
    yrmcds c_;
    yrmcds* c = FUNC1(&c_);
    if( c == NULL ) {
        FUNC0(stderr, "No YRMCDS_HOST.  Skipped.\n");
        return 0;
    }

    FUNC2(c);
    FUNC3(c);

    if( n_failures > 0 ) {
        FUNC0(stderr, "%ld tests failed.\n", n_failures);
        return 1;
    }
    FUNC0(stderr, "Passed.\n");
    return 0;
}