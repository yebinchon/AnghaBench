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
 int invokes ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  my_callback ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8()
{
    uint32_t abs_wtime = 3;
    h2o_timerwheel_t *testwheel = FUNC1(6, abs_wtime);
    h2o_timerwheel_entry_t timers[N];
    int i;

    /* add timers */
    for (i = 0; i < N; i++) {
        uint32_t expiry = abs_wtime + FUNC6() % N;
        FUNC3(&timers[i], my_callback);
        FUNC4(testwheel, &timers[i], expiry);
    }

    int start = invokes;
    /* run the wheel: the timers has a max expiry N-1 + abs_wtime  */
    FUNC7(FUNC5(testwheel, N - 1 + abs_wtime) == N);
    FUNC7(invokes - start == N);
    FUNC0(testwheel);

    FUNC2(testwheel);
}