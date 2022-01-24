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
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ bench_sign ;

/* Variables and functions */
 int /*<<< orphan*/  SECP256K1_CONTEXT_SIGN ; 
 int /*<<< orphan*/  bench_sign_run ; 
 int /*<<< orphan*/  bench_sign_setup ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void) {
    bench_sign data;

    data.ctx = FUNC1(SECP256K1_CONTEXT_SIGN);

    FUNC0("ecdsa_sign", bench_sign_run, bench_sign_setup, NULL, &data, 10, 20000);

    FUNC2(data.ctx);
    return 0;
}