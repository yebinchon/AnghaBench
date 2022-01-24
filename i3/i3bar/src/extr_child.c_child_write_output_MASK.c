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
typedef  int ssize_t ;
struct TYPE_2__ {int click_events; } ;

/* Variables and functions */
 TYPE_1__ child ; 
 int /*<<< orphan*/  child_stdin ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  gen ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const**,size_t*) ; 

__attribute__((used)) static void FUNC6(void) {
    if (child.click_events) {
        const unsigned char *output;
        size_t size;
        ssize_t n;

        FUNC5(gen, &output, &size);

        n = FUNC3(child_stdin, output, size);
        if (n != -1)
            n = FUNC3(child_stdin, "\n", 1);

        FUNC4(gen);

        if (n == -1) {
            child.click_events = false;
            FUNC1();
            FUNC2("child_write_output failed");
            FUNC0(false);
        }
    }
}