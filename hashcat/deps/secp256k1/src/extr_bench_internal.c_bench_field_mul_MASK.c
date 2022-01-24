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
struct TYPE_2__ {int /*<<< orphan*/  fe_y; int /*<<< orphan*/  fe_x; } ;
typedef  TYPE_1__ bench_inv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 200000; i++) {
        FUNC0(&data->fe_x, &data->fe_x, &data->fe_y);
    }
}