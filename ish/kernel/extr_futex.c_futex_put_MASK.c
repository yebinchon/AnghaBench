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
struct futex {scalar_t__ refcount; int /*<<< orphan*/  chain; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct futex*) ; 
 int /*<<< orphan*/  futex_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct futex *futex) {
    if (--futex->refcount == 0) {
        FUNC0(&futex->cond);
        FUNC2(&futex->chain);
        FUNC1(futex);
    }
    FUNC3(&futex_lock);
}