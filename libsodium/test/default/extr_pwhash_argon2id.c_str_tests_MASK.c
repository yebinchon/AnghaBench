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
 int EINVAL ; 
 int MEMLIMIT ; 
 int OPSLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  crypto_pwhash_ALG_ARGON2I13 ; 
 int /*<<< orphan*/  crypto_pwhash_ALG_ARGON2ID13 ; 
 scalar_t__ crypto_pwhash_STRBYTES ; 
 int FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 unsigned int crypto_pwhash_argon2id_SALTBYTES ; 
 unsigned int crypto_pwhash_argon2id_STRBYTES ; 
 int FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char*,char const*,int,int,int) ; 
 scalar_t__ FUNC6 (char*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,int) ; 
 int FUNC8 (char*,char const*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (unsigned char const*,scalar_t__) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (char const*) ; 

__attribute__((used)) static void
FUNC16(void)
{
    char       *str_out;
    char       *str_out2;
    char       *salt;
    const char *passwd = "Correct Horse Battery Staple";

    salt     = (char *) FUNC13(crypto_pwhash_argon2id_SALTBYTES);
    str_out  = (char *) FUNC13(crypto_pwhash_argon2id_STRBYTES);
    str_out2 = (char *) FUNC13(crypto_pwhash_argon2id_STRBYTES);
    FUNC9(salt, ">A 16-bytes salt", crypto_pwhash_argon2id_SALTBYTES);
    if (FUNC5(str_out, passwd, FUNC15(passwd), OPSLIMIT,
                          MEMLIMIT) != 0) {
        FUNC10("pwhash_str failure\n");
    }
    if (FUNC5(str_out2, passwd, FUNC15(passwd), OPSLIMIT,
                          MEMLIMIT) != 0) {
        FUNC10("pwhash_str(2) failure\n");
    }
    if (FUNC14(str_out, str_out2) == 0) {
        FUNC10("pwhash_str() doesn't generate different salts\n");
    }
    if (FUNC7(str_out, OPSLIMIT, MEMLIMIT) != 0 ||
        FUNC7(str_out, OPSLIMIT, MEMLIMIT) != 0) {
        FUNC10("needs_rehash() false positive\n");
    }
    if (FUNC7(str_out, OPSLIMIT, MEMLIMIT / 2) != 1 ||
        FUNC7(str_out, OPSLIMIT - 1, MEMLIMIT) != 1 ||
        FUNC7(str_out, OPSLIMIT, MEMLIMIT * 2) != 1 ||
        FUNC7(str_out, OPSLIMIT + 1, MEMLIMIT) != 1) {
        FUNC10("needs_rehash() false negative (0)\n");
    }
    if (FUNC3(str_out, OPSLIMIT, MEMLIMIT / 2) != 1 ||
        FUNC3(str_out, OPSLIMIT - 1, MEMLIMIT) != 1 ||
        FUNC3(str_out, OPSLIMIT, MEMLIMIT * 2) != 1 ||
        FUNC3(str_out, OPSLIMIT + 1, MEMLIMIT) != 1) {
        FUNC10("needs_rehash() false negative (1)\n");
    }
    if (FUNC1(str_out, OPSLIMIT, MEMLIMIT / 2) != -1 ||
        FUNC1(str_out, OPSLIMIT - 1, MEMLIMIT) != -1 ||
        FUNC1(str_out, OPSLIMIT, MEMLIMIT * 2) != -1 ||
        FUNC1(str_out, OPSLIMIT + 1, MEMLIMIT) != -1) {
        FUNC10("needs_rehash() false negative (2)\n");
    }
    if (FUNC7(str_out, OPSLIMIT, MEMLIMIT / 2) != 1) {
        FUNC10("pwhash_str_needs_rehash() didn't handle argon2id\n");
    }
    if (FUNC7(str_out + 1, OPSLIMIT, MEMLIMIT) != -1 ||
        FUNC3(str_out + 1, OPSLIMIT, MEMLIMIT) != -1) {
        FUNC10("needs_rehash() didn't fail with an invalid hash string\n");
    }
    if (FUNC12((const unsigned char *) str_out + FUNC15(str_out),
                       crypto_pwhash_STRBYTES - FUNC15(str_out)) != 1 ||
        FUNC12((const unsigned char *) str_out2 + FUNC15(str_out2),
                       crypto_pwhash_STRBYTES - FUNC15(str_out2)) != 1) {
        FUNC10("pwhash_argon2id_str() doesn't properly pad with zeros\n");
    }
    if (FUNC4(str_out, passwd, FUNC15(passwd)) != 0) {
        FUNC10("pwhash_argon2id_str_verify(1) failure\n");
    }
    if (FUNC8(str_out, passwd, FUNC15(passwd)) != 0) {
        FUNC10("pwhash_str_verify(1') failure\n");
    }
    str_out[14]++;
    if (FUNC8(str_out, passwd, FUNC15(passwd)) != -1) {
        FUNC10("pwhash_argon2id_str_verify(2) failure\n");
    }
    str_out[14]--;
    FUNC0(str_out[crypto_pwhash_argon2id_STRBYTES - 1U] == 0);

    if (FUNC5(str_out2, passwd, 0x100000000ULL, OPSLIMIT,
                          MEMLIMIT) != -1) {
        FUNC10("pwhash_str() with a large password should have failed\n");
    }
    if (FUNC5(str_out2, passwd, FUNC15(passwd), 1, MEMLIMIT) != 0) {
        FUNC10("pwhash_str() with a small opslimit should not have failed\n");
    }
    if (FUNC5(str_out2, passwd, FUNC15(passwd), 0, MEMLIMIT) != -1) {
        FUNC10("pwhash_argon2id_str() with a null opslimit should have failed\n");
    }
    if (FUNC8("$argon2id$m=65536,t=2,p=1c29tZXNhbHQ"
                                 "$9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ",
                                 "password", 0x100000000ULL) != -1) {
        FUNC10("pwhash_str_verify(invalid(0)) failure\n");
    }
    if (FUNC8("$argon2id$m=65536,t=2,p=1c29tZXNhbHQ"
                                 "$9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(1)) failure %d\n", errno);
    }
    if (FUNC8("$argon2id$m=65536,t=2,p=1$c29tZXNhbHQ"
                                 "9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(2)) failure\n");
    }
    if (FUNC8("$argon2id$m=65536,t=2,p=1$c29tZXNhbHQ"
                                 "$b2G3seW+uPzerwQQC+/E1K50CLLO7YXy0JRcaTuswRo",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(3)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=65536,t=2,p=1c29tZXNhbHQ"
                                 "$wWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(4)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=65536,t=2,p=1$c29tZXNhbHQ"
                                 "wWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(5)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=65536,t=2,p=1$c29tZXNhbHQ"
                                 "$8iIuixkI73Js3G1uMbezQXD0b8LG4SXGsOwoQkdAQIM",
                                 "password", FUNC15("password")) != -1) {
        FUNC10("pwhash_str_verify(invalid(6)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=256,t=3,p=1$MDEyMzQ1Njc"
                                 "$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE",
                                 "password", FUNC15("password")) != 0) {
        FUNC10("pwhash_str_verify(valid(7)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=256,t=3,p=1$MDEyMzQ1Njc"
                                 "$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE",
                                 "passwore", FUNC15("passwore")) != -1 || errno != EINVAL) {
        FUNC10("pwhash_str_verify(invalid(7)) failure\n");
    }
    if (FUNC8("$Argon2id$v=19$m=256,t=3,p=1$MDEyMzQ1Njc"
                                 "$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE",
                                 "password", FUNC15("password")) != -1 || errno != EINVAL) {
        FUNC10("pwhash_str_verify(invalid(8)) failure\n");
    }
    if (FUNC8("$argon2id$v=19$m=256,t=3,p=2$MDEyMzQ1Njc"
                                 "$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE",
                                 "password", FUNC15("password")) != -1 || errno != EINVAL) {
        FUNC10("pwhash_str_verify(invalid(9)) failure\n");
    }
    FUNC0(FUNC6(str_out, "test", 4, OPSLIMIT, MEMLIMIT,
                                 crypto_pwhash_ALG_ARGON2ID13) == 0);
    FUNC0(FUNC4(str_out, "test", 4) == 0);
    FUNC0(FUNC3(str_out,
                                                   OPSLIMIT, MEMLIMIT) == 0);
    FUNC0(FUNC3(str_out,
                                                   OPSLIMIT / 2, MEMLIMIT) == 1);
    FUNC0(FUNC3(str_out,
                                                   OPSLIMIT, MEMLIMIT / 2) == 1);
    FUNC0(FUNC3(str_out, 0, 0) == 1);
    FUNC0(FUNC1(str_out, 0, 0) == -1);
    FUNC0(FUNC3(str_out + 1,
                                                   OPSLIMIT, MEMLIMIT) == -1);
    FUNC0(FUNC1(str_out, 0, 0) == -1);
    FUNC0(FUNC1("", OPSLIMIT, MEMLIMIT) == -1);
    FUNC0(FUNC6(str_out, "test", 4, OPSLIMIT, MEMLIMIT,
                                 crypto_pwhash_ALG_ARGON2I13) == 0);
    FUNC0(FUNC2(str_out, "test", 4) == 0);
    FUNC0(FUNC1(str_out,
                                                  OPSLIMIT, MEMLIMIT) == 0);
    FUNC0(FUNC1(str_out,
                                                  OPSLIMIT / 2, MEMLIMIT) == 1);
    FUNC0(FUNC1(str_out,
                                                  OPSLIMIT, MEMLIMIT / 2) == 1);
    FUNC0(FUNC1(str_out, 0, 0) == 1);
    FUNC0(FUNC3(str_out, 0, 0) == -1);
    FUNC0(FUNC1("", OPSLIMIT, MEMLIMIT) == -1);
    FUNC0(FUNC1(str_out + 1,
                                                  OPSLIMIT, MEMLIMIT) == -1);
    FUNC11(salt);
    FUNC11(str_out);
    FUNC11(str_out2);
}