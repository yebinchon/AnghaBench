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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  h2o_timerwheel_t ;
typedef  int /*<<< orphan*/  h2o_timerwheel_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int N ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  my_callback ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8()
{
    uint32_t abs_wtime = 3;
    h2o_timerwheel_t *testwheel = FUNC1(6, abs_wtime);
    h2o_timerwheel_entry_t timers[N];
    int i;

    /* add N timers */
    for (i = 0; i < N; i++) {
        uint32_t expiry = abs_wtime + i + 5;
        FUNC3(&timers[i], my_callback);
        FUNC4(testwheel, &timers[i], expiry);
    }

    /* delete N-1 timers, so there should be 1 timer left */
    for (i = 0; i < N - 1; i++) {
        FUNC6(&timers[i]);
    }

    /* run the wheel */
    FUNC7(FUNC5(testwheel, N + 6) == 0);
    FUNC0(testwheel);
    FUNC7(FUNC5(testwheel, N + 7) == 1);
    FUNC0(testwheel);

    FUNC2(testwheel);
}