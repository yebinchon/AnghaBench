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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ crypto_pwhash_argon2i_ALG_ARGON2I13 ; 
 unsigned int crypto_pwhash_argon2i_BYTES_MAX ; 
 unsigned int crypto_pwhash_argon2i_BYTES_MIN ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_INTERACTIVE ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_MAX ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_MIN ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_MODERATE ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_SENSITIVE ; 
 unsigned int crypto_pwhash_argon2i_OPSLIMIT_INTERACTIVE ; 
 unsigned int crypto_pwhash_argon2i_OPSLIMIT_MAX ; 
 unsigned int crypto_pwhash_argon2i_OPSLIMIT_MIN ; 
 unsigned int crypto_pwhash_argon2i_OPSLIMIT_MODERATE ; 
 unsigned int crypto_pwhash_argon2i_OPSLIMIT_SENSITIVE ; 
 scalar_t__ crypto_pwhash_argon2i_PASSWD_MAX ; 
 scalar_t__ crypto_pwhash_argon2i_PASSWD_MIN ; 
 unsigned int crypto_pwhash_argon2i_SALTBYTES ; 
 unsigned int crypto_pwhash_argon2i_STRBYTES ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 () ; 
 unsigned int FUNC12 () ; 
 unsigned int FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 unsigned int FUNC16 () ; 
 unsigned int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 

int
FUNC25(void)
{
    FUNC22();
    FUNC23();
    FUNC24();
    FUNC20();

    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC2() > FUNC3());
    FUNC0(FUNC14() > FUNC15());
    FUNC0(FUNC16() > 0U);
    FUNC0(FUNC17() > 1U);
    FUNC0(FUNC17() > FUNC21(FUNC18()));

    FUNC0(FUNC11() > 0U);
    FUNC0(FUNC10() > 0U);
    FUNC0(FUNC6() > 0U);
    FUNC0(FUNC5() > 0U);
    FUNC0(FUNC9() > 0U);
    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC12() > 0U);
    FUNC0(FUNC7() > 0U);
    FUNC0(FUNC13() > 0U);
    FUNC0(FUNC8() > 0U);

    FUNC0(FUNC3() == crypto_pwhash_argon2i_BYTES_MIN);
    FUNC0(FUNC2() == crypto_pwhash_argon2i_BYTES_MAX);
    FUNC0(FUNC15() == crypto_pwhash_argon2i_PASSWD_MIN);
    FUNC0(FUNC14() == crypto_pwhash_argon2i_PASSWD_MAX);
    FUNC0(FUNC16() == crypto_pwhash_argon2i_SALTBYTES);
    FUNC0(FUNC17() == crypto_pwhash_argon2i_STRBYTES);

    FUNC0(FUNC11() == crypto_pwhash_argon2i_OPSLIMIT_MIN);
    FUNC0(FUNC10() == crypto_pwhash_argon2i_OPSLIMIT_MAX);
    FUNC0(FUNC6() == crypto_pwhash_argon2i_MEMLIMIT_MIN);
    FUNC0(FUNC5() == crypto_pwhash_argon2i_MEMLIMIT_MAX);
    FUNC0(FUNC9() ==
           crypto_pwhash_argon2i_OPSLIMIT_INTERACTIVE);
    FUNC0(FUNC4() ==
           crypto_pwhash_argon2i_MEMLIMIT_INTERACTIVE);
    FUNC0(FUNC12() ==
           crypto_pwhash_argon2i_OPSLIMIT_MODERATE);
    FUNC0(FUNC7() ==
           crypto_pwhash_argon2i_MEMLIMIT_MODERATE);
    FUNC0(FUNC13() ==
           crypto_pwhash_argon2i_OPSLIMIT_SENSITIVE);
    FUNC0(FUNC8() ==
           crypto_pwhash_argon2i_MEMLIMIT_SENSITIVE);

    FUNC0(FUNC1() == crypto_pwhash_argon2i_ALG_ARGON2I13);

    FUNC19("OK\n");

    return 0;
}