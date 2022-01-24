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
struct TYPE_2__ {int /*<<< orphan*/  scalar_y; int /*<<< orphan*/  scalar_x; int /*<<< orphan*/  wnaf; } ;
typedef  TYPE_1__ bench_inv ;

/* Variables and functions */
 int /*<<< orphan*/  WINDOW_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 20000; i++) {
        FUNC1(data->wnaf, &data->scalar_x, WINDOW_A, 256);
        FUNC0(&data->scalar_x, &data->scalar_x, &data->scalar_y);
    }
}