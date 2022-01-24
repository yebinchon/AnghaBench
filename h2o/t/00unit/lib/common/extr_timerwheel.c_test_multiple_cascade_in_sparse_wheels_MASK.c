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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  h2o_timerwheel_t ;
typedef  int /*<<< orphan*/  h2o_timerwheel_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const) ; 
 int invokes ; 
 int /*<<< orphan*/  my_callback ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    const uint64_t base_time = 0x1659418c000;
    h2o_timerwheel_t *ctx = FUNC0(3, base_time - 2048);
    h2o_timerwheel_entry_t t1, t2;

    invokes = 0;

    FUNC2(&t1, my_callback);
    FUNC3(ctx, &t1, base_time);

    FUNC4(ctx, base_time - 100);
    FUNC5(invokes == 0);

    FUNC2(&t2, my_callback);
    FUNC3(ctx, &t2, base_time);

    FUNC4(ctx, base_time - 100);
    FUNC5(invokes == 0);

    FUNC4(ctx, base_time);
    FUNC5(invokes == 2);

    FUNC4(ctx, base_time + 1024);

    FUNC1(ctx);
}