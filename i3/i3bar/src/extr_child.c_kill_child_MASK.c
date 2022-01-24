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
struct TYPE_2__ {scalar_t__ pid; scalar_t__ cont_signal; scalar_t__ stopped; } ;

/* Variables and functions */
 scalar_t__ SIGTERM ; 
 TYPE_1__ child ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    if (child.pid > 0) {
        if (child.cont_signal > 0 && child.stopped)
            FUNC1(child.pid, child.cont_signal);
        FUNC1(child.pid, SIGTERM);
        int status;
        FUNC2(child.pid, &status, 0);
        FUNC0();
    }
}