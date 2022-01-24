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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_core_ristretto255_NONREDUCEDSCALARBYTES ; 
 int /*<<< orphan*/  crypto_core_ristretto255_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(void)
{
    unsigned char *r;
    unsigned char *s1;
    unsigned char *s2;
    unsigned char *s3;
    unsigned char *s4;

    r = (unsigned char *) FUNC13(crypto_core_ristretto255_NONREDUCEDSCALARBYTES);
    s1 = (unsigned char *) FUNC13(crypto_core_ristretto255_SCALARBYTES);
    s2 = (unsigned char *) FUNC13(crypto_core_ristretto255_SCALARBYTES);
    s3 = (unsigned char *) FUNC13(crypto_core_ristretto255_SCALARBYTES);
    s4 = (unsigned char *) FUNC13(crypto_core_ristretto255_SCALARBYTES);

    FUNC6(s1);
    FUNC10(r, crypto_core_ristretto255_NONREDUCEDSCALARBYTES);
    FUNC7(s2, r);
    FUNC9(s4, s1, crypto_core_ristretto255_SCALARBYTES);
    FUNC1(s3, s1, s2);
    FUNC8(s4, s1, s2);
    FUNC1(s2, s3, s4);
    FUNC8(s2, s2, s1);
    FUNC4(s2, s3, s2);
    FUNC3(s4, s3);
    FUNC4(s2, s2, s4);
    FUNC5(s1, s1);
    FUNC1(s2, s2, s1);
    FUNC2(s1, s2);
    s1[0]--;
    FUNC0(FUNC12(s1, crypto_core_ristretto255_SCALARBYTES));

    FUNC11(s1);
    FUNC11(s2);
    FUNC11(s3);
    FUNC11(s4);
    FUNC11(r);
}