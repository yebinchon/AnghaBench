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
struct sighand {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sighand* FUNC1 () ; 

struct sighand *FUNC2(struct sighand *sighand) {
    struct sighand *new_sighand = FUNC1();
    if (new_sighand == NULL)
        return NULL;
    FUNC0(new_sighand->action, sighand->action, sizeof(new_sighand->action));
    return new_sighand;
}