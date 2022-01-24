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
 int FUNC1 (int*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(const secp256k1_scalar *number, int w) {
    secp256k1_scalar x, two, t;
    int wnaf[256];
    int zeroes = -1;
    int i;
    int bits;
    FUNC6(&x, 0);
    FUNC6(&two, 2);
    bits = FUNC1(wnaf, 256, number, w);
    FUNC0(bits <= 256);
    for (i = bits-1; i >= 0; i--) {
        int v = wnaf[i];
        FUNC4(&x, &x, &two);
        if (v) {
            FUNC0(zeroes == -1 || zeroes >= w-1); /* check that distance between non-zero elements is at least w-1 */
            zeroes=0;
            FUNC0((v & 1) == 1); /* check non-zero elements are odd */
            FUNC0(v <= (1 << (w-1)) - 1); /* check range below */
            FUNC0(v >= -(1 << (w-1)) - 1); /* check range above */
        } else {
            FUNC0(zeroes != -1); /* check that no unnecessary zero padding exists */
            zeroes++;
        }
        if (v >= 0) {
            FUNC6(&t, v);
        } else {
            FUNC6(&t, -v);
            FUNC5(&t, &t);
        }
        FUNC2(&x, &x, &t);
    }
    FUNC0(FUNC3(&x, number)); /* check that wnaf represents number */
}