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
struct TYPE_3__ {scalar_t__ retry; int /*<<< orphan*/  v; int /*<<< orphan*/  k; } ;
typedef  TYPE_1__ secp256k1_rfc6979_hmac_sha256 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(secp256k1_rfc6979_hmac_sha256 *rng) {
    FUNC0(rng->k, 0, 32);
    FUNC0(rng->v, 0, 32);
    rng->retry = 0;
}