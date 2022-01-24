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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

void FUNC5(void) {
    int w = 4;
    int wnaf[256] = {0};
    int i;
    int skew;
    secp256k1_scalar num;

    FUNC2(&num, 0);
    skew = FUNC3(wnaf, &num, w);
    for (i = FUNC1(w)-1; i >= 0; --i) {
        int v = wnaf[i];
        FUNC0(v == 0);
    }
    FUNC0(skew == 0);

    FUNC2(&num, 1);
    skew = FUNC3(wnaf, &num, w);
    for (i = FUNC1(w)-1; i >= 1; --i) {
        int v = wnaf[i];
        FUNC0(v == 0);
    }
    FUNC0(wnaf[0] == 1);
    FUNC0(skew == 0);

    {
        int wnaf_expected[8] = { 0xf, 0xf, 0xf, 0xf, 0xf, 0xf, 0xf, 0xf };
        FUNC2(&num, 0xffffffff);
        skew = FUNC3(wnaf, &num, w);
        FUNC4(wnaf, wnaf_expected, w);
        FUNC0(skew == 0);
    }
    {
        int wnaf_expected[8] = { -1, -1, -1, -1, -1, -1, -1, 0xf };
        FUNC2(&num, 0xeeeeeeee);
        skew = FUNC3(wnaf, &num, w);
        FUNC4(wnaf, wnaf_expected, w);
        FUNC0(skew == 1);
    }
    {
        int wnaf_expected[8] = { 1, 0, 1, 0, 1, 0, 1, 0 };
        FUNC2(&num, 0x01010101);
        skew = FUNC3(wnaf, &num, w);
        FUNC4(wnaf, wnaf_expected, w);
        FUNC0(skew == 0);
    }
    {
        int wnaf_expected[8] = { -0xf, 0, 0xf, -0xf, 0, 0xf, 1, 0 };
        FUNC2(&num, 0x01ef1ef1);
        skew = FUNC3(wnaf, &num, w);
        FUNC4(wnaf, wnaf_expected, w);
        FUNC0(skew == 0);
    }
}