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
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *userp)
{
    uv_loop_t *loop1 = FUNC0();

    uv_signal_t sig1a, sig1b;
    FUNC2(loop1, &sig1a);
    FUNC3(&sig1a, signal_handler, SIGUSR1);

    FUNC2(loop1, &sig1b);
    FUNC3(&sig1b, signal_handler, SIGUSR1);

    FUNC1(loop1, UV_RUN_DEFAULT);
}