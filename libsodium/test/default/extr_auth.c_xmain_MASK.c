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
typedef  int /*<<< orphan*/  crypto_auth_hmacsha512_state ;
typedef  int /*<<< orphan*/  crypto_auth_hmacsha512256_state ;
typedef  int /*<<< orphan*/  crypto_auth_hmacsha256_state ;

/* Variables and functions */
 scalar_t__* a ; 
 scalar_t__* a2 ; 
 scalar_t__* a3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* c ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 unsigned int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC12 () ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 unsigned int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC18 () ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 unsigned int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__* guard_page ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  key2 ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 scalar_t__ FUNC25 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,char*) ; 

int
FUNC27(void)
{
    crypto_auth_hmacsha512_state st;
    crypto_auth_hmacsha256_state st256;
    crypto_auth_hmacsha512256_state st512_256;
    size_t                       i;

    FUNC0(FUNC19() ==
           sizeof(crypto_auth_hmacsha512_state));
    FUNC1(a, c, sizeof c - 1U, key);
    for (i = 0; i < sizeof a; ++i) {
        FUNC24(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }
    FUNC24("\n");

    FUNC17(&st, key, sizeof key);
    FUNC20(&st, c, 1U);
    FUNC20(&st, c, sizeof c - 2U);
    FUNC16(&st, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC24(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }
    FUNC24("\n");

    FUNC17(&st, key2, sizeof key2);
    FUNC20(&st, c, 1U);
    FUNC20(&st, c, sizeof c - 2U);
    FUNC16(&st, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC24(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }

    FUNC23(a2, 0, sizeof a2);
    FUNC5(&st256, key2, sizeof key2);
    FUNC8(&st256, guard_page, 0U);
    FUNC8(&st256, c, 1U);
    FUNC8(&st256, c, sizeof c - 2U);
    FUNC4(&st256, a2);
    for (i = 0; i < sizeof a2; ++i) {
        FUNC24(",0x%02x", (unsigned int) a2[i]);
        if (i % 8 == 7)
            FUNC24("\n");
    }

    /* Empty message tests: HMAC-SHA512 */
    FUNC23(a2, 0, sizeof a2);
    FUNC17(&st, key, sizeof key);
    FUNC16(&st, a2);

    FUNC23(a3, 0, sizeof a3);
    FUNC17(&st, key, sizeof key);
    FUNC20(&st, a2, 0U);
    FUNC16(&st, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    FUNC23(a3, 0, sizeof a3);
    FUNC17(&st, key, sizeof key);
    FUNC20(&st, guard_page, 0U);
    FUNC16(&st, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    /* Empty message tests: HMAC-SHA512-256 */
    FUNC23(a2, 0, sizeof a2);
    FUNC11(&st512_256, key, sizeof key);
    FUNC10(&st512_256, a2);

    FUNC23(a3, 0, sizeof a3);
    FUNC11(&st512_256, key, sizeof key);
    FUNC14(&st512_256, a2, 0U);
    FUNC10(&st512_256, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    FUNC23(a3, 0, sizeof a3);
    FUNC11(&st512_256, key, sizeof key);
    FUNC14(&st512_256, guard_page, 0U);
    FUNC10(&st512_256, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    /* Empty message tests: HMAC-SHA256 */

    FUNC23(a2, 0, sizeof a2);
    FUNC5(&st256, key, sizeof key);
    FUNC4(&st256, a2);

    FUNC23(a3, 0, sizeof a3);
    FUNC5(&st256, key, sizeof key);
    FUNC8(&st256, a2, 0U);
    FUNC4(&st256, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    FUNC23(a3, 0, sizeof a3);
    FUNC5(&st256, key, sizeof key);
    FUNC8(&st256, guard_page, 0U);
    FUNC4(&st256, a3);
    FUNC0(FUNC25(a2, a3, sizeof a2) == 0);

    /* --- */

    FUNC0(FUNC2() > 0U);
    FUNC0(FUNC21() > 0U);
    FUNC0(FUNC26(FUNC22(), "hmacsha512256") == 0);
    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC6() > 0U);
    FUNC0(FUNC15() > 0U);
    FUNC0(FUNC18() > 0U);
    FUNC0(FUNC9() == FUNC2());
    FUNC0(FUNC12() == FUNC21());
    FUNC0(FUNC13() >=
           FUNC12());
    FUNC0(FUNC7() ==
           sizeof(crypto_auth_hmacsha256_state));
    FUNC0(FUNC19() ==
           sizeof(crypto_auth_hmacsha512_state));

    return 0;
}