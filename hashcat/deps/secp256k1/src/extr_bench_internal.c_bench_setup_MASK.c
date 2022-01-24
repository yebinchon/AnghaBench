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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  ge_y; int /*<<< orphan*/  gej_y; int /*<<< orphan*/  ge_x; int /*<<< orphan*/  gej_x; int /*<<< orphan*/  fe_y; int /*<<< orphan*/  fe_x; int /*<<< orphan*/  scalar_y; int /*<<< orphan*/  scalar_x; } ;
typedef  TYPE_1__ bench_inv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ *) ; 

void FUNC6(void* arg) {
    bench_inv *data = (bench_inv*)arg;

    static const unsigned char init_x[32] = {
        0x02, 0x03, 0x05, 0x07, 0x0b, 0x0d, 0x11, 0x13,
        0x17, 0x1d, 0x1f, 0x25, 0x29, 0x2b, 0x2f, 0x35,
        0x3b, 0x3d, 0x43, 0x47, 0x49, 0x4f, 0x53, 0x59,
        0x61, 0x65, 0x67, 0x6b, 0x6d, 0x71, 0x7f, 0x83
    };

    static const unsigned char init_y[32] = {
        0x82, 0x83, 0x85, 0x87, 0x8b, 0x8d, 0x81, 0x83,
        0x97, 0xad, 0xaf, 0xb5, 0xb9, 0xbb, 0xbf, 0xc5,
        0xdb, 0xdd, 0xe3, 0xe7, 0xe9, 0xef, 0xf3, 0xf9,
        0x11, 0x15, 0x17, 0x1b, 0x1d, 0xb1, 0xbf, 0xd3
    };

    FUNC5(&data->scalar_x, init_x, NULL);
    FUNC5(&data->scalar_y, init_y, NULL);
    FUNC2(&data->fe_x, init_x);
    FUNC2(&data->fe_y, init_y);
    FUNC0(FUNC3(&data->ge_x, &data->fe_x, 0));
    FUNC0(FUNC3(&data->ge_y, &data->fe_y, 1));
    FUNC4(&data->gej_x, &data->ge_x);
    FUNC4(&data->gej_y, &data->ge_y);
    FUNC1(data->data, init_x, 32);
    FUNC1(data->data + 32, init_y, 32);
}