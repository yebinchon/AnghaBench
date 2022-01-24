#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_signal_t ;
struct TYPE_3__ {void* data; } ;

/* Variables and functions */
 int FIB_UNTIL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  after_fib ; 
 int /*<<< orphan*/  fib ; 
 TYPE_1__* fib_reqs ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5() {
    loop = FUNC0();

    int data[FIB_UNTIL];
    int i;
    for (i = 0; i < FIB_UNTIL; i++) {
        data[i] = i;
        fib_reqs[i].data = (void *) &data[i];
        FUNC1(loop, &fib_reqs[i], fib, after_fib);
    }

    uv_signal_t sig;
    FUNC3(loop, &sig);
    FUNC4(&sig, signal_handler, SIGINT);

    return FUNC2(loop, UV_RUN_DEFAULT);
}