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
typedef  int /*<<< orphan*/  secp256k1_fe ;
struct TYPE_2__ {int /*<<< orphan*/  fe_y; int /*<<< orphan*/  fe_x; } ;
typedef  TYPE_1__ bench_inv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;
    secp256k1_fe t;

    for (i = 0; i < 20000; i++) {
        t = data->fe_x;
        FUNC1(&data->fe_x, &t);
        FUNC0(&data->fe_x, &data->fe_y);
    }
}