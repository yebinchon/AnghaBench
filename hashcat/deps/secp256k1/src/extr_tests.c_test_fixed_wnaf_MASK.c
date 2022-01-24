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
typedef  int /*<<< orphan*/  secp256k1_scalar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int*,int /*<<< orphan*/ *,int) ; 

void FUNC10(const secp256k1_scalar *number, int w) {
    secp256k1_scalar x, shift;
    int wnaf[256] = {0};
    int i;
    int skew;
    secp256k1_scalar num = *number;

    FUNC7(&x, 0);
    FUNC7(&shift, 1 << w);
    /* With USE_ENDOMORPHISM on we only consider 128-bit numbers */
#ifdef USE_ENDOMORPHISM
    for (i = 0; i < 16; ++i) {
        secp256k1_scalar_shr_int(&num, 8);
    }
#endif
    skew = FUNC9(wnaf, &num, w);

    for (i = FUNC1(w)-1; i >= 0; --i) {
        secp256k1_scalar t;
        int v = wnaf[i];
        FUNC0(v == 0 || v & 1);  /* check parity */
        FUNC0(v > -(1 << w)); /* check range above */
        FUNC0(v < (1 << w));  /* check range below */

        FUNC5(&x, &x, &shift);
        if (v >= 0) {
            FUNC7(&t, v);
        } else {
            FUNC7(&t, -v);
            FUNC6(&t, &t);
        }
        FUNC2(&x, &x, &t);
    }
    /* If skew is 1 then add 1 to num */
    FUNC3(&num, 0, skew == 1);
    FUNC0(FUNC4(&x, &num));
}