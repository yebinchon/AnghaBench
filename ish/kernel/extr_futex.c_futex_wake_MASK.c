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
struct futex {int /*<<< orphan*/  cond; } ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct futex* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct futex*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(addr_t uaddr, dword_t val) {
    struct futex *futex = FUNC1(uaddr);
    if (val == 1)
        FUNC4(&futex->cond);
    else if (val == 0x7fffffff)
        FUNC3(&futex->cond);
    else
        FUNC0("invalid number of futex wakes %d", val);
    FUNC2(futex);
    return val; // FIXME wrong if val is INT_MAX
}