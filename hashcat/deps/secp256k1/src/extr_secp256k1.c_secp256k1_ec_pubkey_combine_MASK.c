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
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(const secp256k1_context* ctx, secp256k1_pubkey *pubnonce, const secp256k1_pubkey * const *pubnonces, size_t n) {
    size_t i;
    secp256k1_gej Qj;
    secp256k1_ge Q;

    FUNC0(pubnonce != NULL);
    FUNC1(pubnonce, 0, sizeof(*pubnonce));
    FUNC0(n >= 1);
    FUNC0(pubnonces != NULL);

    FUNC5(&Qj);

    for (i = 0; i < n; i++) {
        FUNC6(ctx, &Q, pubnonces[i]);
        FUNC3(&Qj, &Qj, &Q);
    }
    if (FUNC4(&Qj)) {
        return 0;
    }
    FUNC2(&Q, &Qj);
    FUNC7(pubnonce, &Q);
    return 1;
}