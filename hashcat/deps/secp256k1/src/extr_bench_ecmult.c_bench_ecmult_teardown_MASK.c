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
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_2__ {int count; int /*<<< orphan*/ * expected_output; int /*<<< orphan*/ * output; } ;
typedef  TYPE_1__ bench_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ITERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void* arg) {
    bench_data* data = (bench_data*)arg;
    size_t iters = 1 + ITERS / data->count;
    size_t iter;
    /* Verify the results in teardown, to avoid doing comparisons while benchmarking. */
    for (iter = 0; iter < iters; ++iter) {
        secp256k1_gej tmp;
        FUNC1(&tmp, &data->output[iter], &data->expected_output[iter], NULL);
        FUNC0(FUNC2(&tmp));
    }
}