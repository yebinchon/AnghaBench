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
typedef  int /*<<< orphan*/  uv_req_t ;

/* Variables and functions */
 int FIB_UNTIL ; 
 int /*<<< orphan*/ * fib_reqs ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(uv_signal_t *req, int signum)
{
    FUNC0("Signal received!\n");
    int i;
    for (i = 0; i < FIB_UNTIL; i++) {
        FUNC1((uv_req_t*) &fib_reqs[i]);
    }
    FUNC2(req);
}