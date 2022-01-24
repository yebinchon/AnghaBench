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
typedef  int /*<<< orphan*/  secp256k1_scalar ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ secp256k1_ecdsa_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(secp256k1_ecdsa_signature* sig, const secp256k1_scalar* r, const secp256k1_scalar* s) {
    if (sizeof(secp256k1_scalar) == 32) {
        FUNC0(&sig->data[0], r, 32);
        FUNC0(&sig->data[32], s, 32);
    } else {
        FUNC1(&sig->data[0], r);
        FUNC1(&sig->data[32], s);
    }
}