#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int* d; } ;
typedef  TYPE_1__ secp256k1_scalar ;

/* Variables and functions */
 scalar_t__ SECP256K1_N_C_0 ; 
 scalar_t__ SECP256K1_N_C_1 ; 
 scalar_t__ SECP256K1_N_C_2 ; 
 scalar_t__ SECP256K1_N_C_3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 

__attribute__((used)) static void FUNC9(secp256k1_scalar *r, const uint32_t *l) {
    uint64_t c;
    uint32_t n0 = l[8], n1 = l[9], n2 = l[10], n3 = l[11], n4 = l[12], n5 = l[13], n6 = l[14], n7 = l[15];
    uint32_t m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12;
    uint32_t p0, p1, p2, p3, p4, p5, p6, p7, p8;

    /* 96 bit accumulator. */
    uint32_t c0, c1, c2;

    /* Reduce 512 bits into 385. */
    /* m[0..12] = l[0..7] + n[0..7] * SECP256K1_N_C. */
    c0 = l[0]; c1 = 0; c2 = 0;
    FUNC4(n0, SECP256K1_N_C_0);
    FUNC2(m0);
    FUNC8(l[1]);
    FUNC3(n1, SECP256K1_N_C_0);
    FUNC3(n0, SECP256K1_N_C_1);
    FUNC1(m1);
    FUNC7(l[2]);
    FUNC3(n2, SECP256K1_N_C_0);
    FUNC3(n1, SECP256K1_N_C_1);
    FUNC3(n0, SECP256K1_N_C_2);
    FUNC1(m2);
    FUNC7(l[3]);
    FUNC3(n3, SECP256K1_N_C_0);
    FUNC3(n2, SECP256K1_N_C_1);
    FUNC3(n1, SECP256K1_N_C_2);
    FUNC3(n0, SECP256K1_N_C_3);
    FUNC1(m3);
    FUNC7(l[4]);
    FUNC3(n4, SECP256K1_N_C_0);
    FUNC3(n3, SECP256K1_N_C_1);
    FUNC3(n2, SECP256K1_N_C_2);
    FUNC3(n1, SECP256K1_N_C_3);
    FUNC7(n0);
    FUNC1(m4);
    FUNC7(l[5]);
    FUNC3(n5, SECP256K1_N_C_0);
    FUNC3(n4, SECP256K1_N_C_1);
    FUNC3(n3, SECP256K1_N_C_2);
    FUNC3(n2, SECP256K1_N_C_3);
    FUNC7(n1);
    FUNC1(m5);
    FUNC7(l[6]);
    FUNC3(n6, SECP256K1_N_C_0);
    FUNC3(n5, SECP256K1_N_C_1);
    FUNC3(n4, SECP256K1_N_C_2);
    FUNC3(n3, SECP256K1_N_C_3);
    FUNC7(n2);
    FUNC1(m6);
    FUNC7(l[7]);
    FUNC3(n7, SECP256K1_N_C_0);
    FUNC3(n6, SECP256K1_N_C_1);
    FUNC3(n5, SECP256K1_N_C_2);
    FUNC3(n4, SECP256K1_N_C_3);
    FUNC7(n3);
    FUNC1(m7);
    FUNC3(n7, SECP256K1_N_C_1);
    FUNC3(n6, SECP256K1_N_C_2);
    FUNC3(n5, SECP256K1_N_C_3);
    FUNC7(n4);
    FUNC1(m8);
    FUNC3(n7, SECP256K1_N_C_2);
    FUNC3(n6, SECP256K1_N_C_3);
    FUNC7(n5);
    FUNC1(m9);
    FUNC3(n7, SECP256K1_N_C_3);
    FUNC7(n6);
    FUNC1(m10);
    FUNC8(n7);
    FUNC2(m11);
    FUNC0(c0 <= 1);
    m12 = c0;

    /* Reduce 385 bits into 258. */
    /* p[0..8] = m[0..7] + m[8..12] * SECP256K1_N_C. */
    c0 = m0; c1 = 0; c2 = 0;
    FUNC4(m8, SECP256K1_N_C_0);
    FUNC2(p0);
    FUNC8(m1);
    FUNC3(m9, SECP256K1_N_C_0);
    FUNC3(m8, SECP256K1_N_C_1);
    FUNC1(p1);
    FUNC7(m2);
    FUNC3(m10, SECP256K1_N_C_0);
    FUNC3(m9, SECP256K1_N_C_1);
    FUNC3(m8, SECP256K1_N_C_2);
    FUNC1(p2);
    FUNC7(m3);
    FUNC3(m11, SECP256K1_N_C_0);
    FUNC3(m10, SECP256K1_N_C_1);
    FUNC3(m9, SECP256K1_N_C_2);
    FUNC3(m8, SECP256K1_N_C_3);
    FUNC1(p3);
    FUNC7(m4);
    FUNC3(m12, SECP256K1_N_C_0);
    FUNC3(m11, SECP256K1_N_C_1);
    FUNC3(m10, SECP256K1_N_C_2);
    FUNC3(m9, SECP256K1_N_C_3);
    FUNC7(m8);
    FUNC1(p4);
    FUNC7(m5);
    FUNC3(m12, SECP256K1_N_C_1);
    FUNC3(m11, SECP256K1_N_C_2);
    FUNC3(m10, SECP256K1_N_C_3);
    FUNC7(m9);
    FUNC1(p5);
    FUNC7(m6);
    FUNC3(m12, SECP256K1_N_C_2);
    FUNC3(m11, SECP256K1_N_C_3);
    FUNC7(m10);
    FUNC1(p6);
    FUNC8(m7);
    FUNC4(m12, SECP256K1_N_C_3);
    FUNC8(m11);
    FUNC2(p7);
    p8 = c0 + m12;
    FUNC0(p8 <= 2);

    /* Reduce 258 bits into 256. */
    /* r[0..7] = p[0..7] + p[8] * SECP256K1_N_C. */
    c = p0 + (uint64_t)SECP256K1_N_C_0 * p8;
    r->d[0] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p1 + (uint64_t)SECP256K1_N_C_1 * p8;
    r->d[1] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p2 + (uint64_t)SECP256K1_N_C_2 * p8;
    r->d[2] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p3 + (uint64_t)SECP256K1_N_C_3 * p8;
    r->d[3] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p4 + (uint64_t)p8;
    r->d[4] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p5;
    r->d[5] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p6;
    r->d[6] = c & 0xFFFFFFFFUL; c >>= 32;
    c += p7;
    r->d[7] = c & 0xFFFFFFFFUL; c >>= 32;

    /* Final reduction of r. */
    FUNC6(r, c + FUNC5(r));
}