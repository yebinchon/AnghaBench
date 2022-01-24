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

/* Variables and functions */
 double HUGE_VAL ; 
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(char *name, void (*benchmark)(void*), void (*setup)(void*), void (*teardown)(void*), void* data, int count, int iter) {
    int i;
    double min = HUGE_VAL;
    double sum = 0.0;
    double max = 0.0;
    for (i = 0; i < count; i++) {
        double begin, total;
        if (setup != NULL) {
            setup(data);
        }
        begin = FUNC0();
        benchmark(data);
        total = FUNC0() - begin;
        if (teardown != NULL) {
            teardown(data);
        }
        if (total < min) {
            min = total;
        }
        if (total > max) {
            max = total;
        }
        sum += total;
    }
    FUNC2("%s: min ", name);
    FUNC1(min * 1000000.0 / iter);
    FUNC2("us / avg ");
    FUNC1((sum / count) * 1000000.0 / iter);
    FUNC2("us / max ");
    FUNC1(max * 1000000.0 / iter);
    FUNC2("us\n");
}