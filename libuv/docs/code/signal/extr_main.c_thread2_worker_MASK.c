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
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  UV_RUN_NOWAIT ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  signal_handler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *userp)
{
    uv_loop_t *loop2 = FUNC0();
    uv_loop_t *loop3 = FUNC0();

    uv_signal_t sig2;
    FUNC2(loop2, &sig2);
    FUNC3(&sig2, signal_handler, SIGUSR1);

    uv_signal_t sig3;
    FUNC2(loop3, &sig3);
    FUNC3(&sig3, signal_handler, SIGUSR1);

    while (FUNC1(loop2, UV_RUN_NOWAIT) || FUNC1(loop3, UV_RUN_NOWAIT)) {
    }
}