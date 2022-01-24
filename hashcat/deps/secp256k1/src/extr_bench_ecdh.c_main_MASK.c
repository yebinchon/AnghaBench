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
typedef  int /*<<< orphan*/  bench_ecdh_data ;

/* Variables and functions */
 int /*<<< orphan*/  bench_ecdh ; 
 int /*<<< orphan*/  bench_ecdh_setup ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int FUNC1(void) {
    bench_ecdh_data data;

    FUNC0("ecdh", bench_ecdh, bench_ecdh_setup, NULL, &data, 10, 20000);
    return 0;
}