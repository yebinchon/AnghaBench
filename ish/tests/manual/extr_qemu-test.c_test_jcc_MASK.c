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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 

void FUNC1(void)
{
    FUNC0("ne", 1, 1);
    FUNC0("ne", 1, 0);

    FUNC0("e", 1, 1);
    FUNC0("e", 1, 0);

    FUNC0("l", 1, 1);
    FUNC0("l", 1, 0);
    FUNC0("l", 1, -1);

    FUNC0("le", 1, 1);
    FUNC0("le", 1, 0);
    FUNC0("le", 1, -1);

    FUNC0("ge", 1, 1);
    FUNC0("ge", 1, 0);
    FUNC0("ge", -1, 1);

    FUNC0("g", 1, 1);
    FUNC0("g", 1, 0);
    FUNC0("g", 1, -1);

    FUNC0("b", 1, 1);
    FUNC0("b", 1, 0);
    FUNC0("b", 1, -1);

    FUNC0("be", 1, 1);
    FUNC0("be", 1, 0);
    FUNC0("be", 1, -1);

    FUNC0("ae", 1, 1);
    FUNC0("ae", 1, 0);
    FUNC0("ae", 1, -1);

    FUNC0("a", 1, 1);
    FUNC0("a", 1, 0);
    FUNC0("a", 1, -1);


    FUNC0("p", 1, 1);
    FUNC0("p", 1, 0);

    FUNC0("np", 1, 1);
    FUNC0("np", 1, 0);

    FUNC0("o", 0x7fffffff, 0);
    FUNC0("o", 0x7fffffff, -1);

    FUNC0("no", 0x7fffffff, 0);
    FUNC0("no", 0x7fffffff, -1);

    FUNC0("s", 0, 1);
    FUNC0("s", 0, -1);
    FUNC0("s", 0, 0);

    FUNC0("ns", 0, 1);
    FUNC0("ns", 0, -1);
    FUNC0("ns", 0, 0);
}