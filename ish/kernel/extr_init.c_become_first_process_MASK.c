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
struct task {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task*) ; 
 int FUNC1 (struct task*) ; 
 struct task* FUNC2 (int /*<<< orphan*/ *) ; 
 struct task* current ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4() {
    // now seems like a nice time
    FUNC3();

    struct task *task = FUNC2(NULL);
    if (FUNC0(task))
        return FUNC1(task);

    current = task;
    return 0;
}