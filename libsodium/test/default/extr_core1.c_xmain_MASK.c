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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 scalar_t__* firstkey ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  shared ; 
 int /*<<< orphan*/  zero ; 

int
FUNC7(void)
{
    int i;

    FUNC1(firstkey, zero, shared, c);
    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            FUNC6(",");
        } else {
            FUNC6(" ");
        }
        FUNC6("0x%02x", (unsigned int) firstkey[i]);
        if (i % 8 == 7) {
            FUNC6("\n");
        }
    }
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC2() > 0U);

    return 0;
}