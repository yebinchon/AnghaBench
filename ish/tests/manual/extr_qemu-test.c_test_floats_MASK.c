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
struct TYPE_2__ {int d; } ;

/* Variables and functions */
 scalar_t__ TEST_CMOV ; 
 TYPE_1__ q_nan ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (double,int) ; 

void FUNC7(void)
{
    FUNC6(2, 3);
    FUNC6(1.4, -5);
    FUNC2(2, -1);
    FUNC2(2, 2);
    FUNC2(2, 3);
    FUNC2(2, q_nan.d);
    FUNC2(q_nan.d, -1);
    FUNC2(-1.0/0.0, -1);
    FUNC2(1.0/0.0, -1);
    FUNC4(0.5);
    FUNC4(-0.5);
    FUNC4(1.0/7.0);
    FUNC4(-1.0/9.0);
    FUNC4(32768);
    FUNC4(-1e20);
    FUNC4(-1.0/0.0);
    FUNC4(1.0/0.0);
    FUNC4(q_nan.d);
    FUNC3();
    FUNC0(1234567890123456.0);
    FUNC0(-123451234567890.0);
    FUNC5();
    if (TEST_CMOV) {
        FUNC1();
    }
}