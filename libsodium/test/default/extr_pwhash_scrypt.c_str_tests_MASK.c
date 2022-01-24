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
 int MEMLIMIT ; 
 int OPSLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int crypto_pwhash_scryptsalsa208sha256_SALTBYTES ; 
 unsigned int crypto_pwhash_scryptsalsa208sha256_STRBYTES ; 
 scalar_t__ FUNC1 (char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11(void)
{
    char       *str_out;
    char       *str_out2;
    char       *salt;
    const char *passwd = "Correct Horse Battery Staple";

    salt = (char *) FUNC8(crypto_pwhash_scryptsalsa208sha256_SALTBYTES);
    str_out =
        (char *) FUNC8(crypto_pwhash_scryptsalsa208sha256_STRBYTES);
    str_out2 =
        (char *) FUNC8(crypto_pwhash_scryptsalsa208sha256_STRBYTES);
    FUNC5(salt, "[<~A 32-bytes salt for scrypt~>]",
           crypto_pwhash_scryptsalsa208sha256_SALTBYTES);
    if (FUNC1(str_out, passwd, FUNC10(passwd),
                                               OPSLIMIT, MEMLIMIT) != 0) {
        FUNC6("pwhash_str failure\n");
    }
    if (FUNC1(str_out2, passwd, FUNC10(passwd),
                                               OPSLIMIT, MEMLIMIT) != 0) {
        FUNC6("pwhash_str(2) failure\n");
    }
    if (FUNC9(str_out, str_out2) == 0) {
        FUNC6("pwhash_str doesn't generate different salts\n");
    }
    if (FUNC2
        (str_out, OPSLIMIT, MEMLIMIT) != 0) {
        FUNC6("needs_rehash() false positive\n");
    }
    if (FUNC2
        (str_out, OPSLIMIT, MEMLIMIT / 2) != 1 ||
        FUNC2
        (str_out, OPSLIMIT / 2, MEMLIMIT) != 1 ||
        FUNC2
        (str_out, OPSLIMIT, MEMLIMIT * 2) != 1 ||
        FUNC2
        (str_out, OPSLIMIT * 2, MEMLIMIT) != 1) {
        FUNC6("needs_rehash() false negative\n");
    }
    if (FUNC2
        (str_out + 1, OPSLIMIT, MEMLIMIT) != -1) {
        FUNC6("needs_rehash() didn't fail with an invalid hash string\n");
    }
    if (FUNC3(str_out, passwd,
                                                      FUNC10(passwd)) != 0) {
        FUNC6("pwhash_str_verify failure\n");
    }
    if (FUNC3(str_out, passwd,
                                                      FUNC10(passwd)) != 0) {
        FUNC6("pwhash_str_verify failure\n");
    }
    str_out[14]++;
    if (FUNC3(str_out, passwd,
                                                      FUNC10(passwd)) == 0) {
        FUNC6("pwhash_str_verify(2) failure\n");
    }
    str_out[14]--;

    FUNC0(str_out[crypto_pwhash_scryptsalsa208sha256_STRBYTES - 1U] == 0);

    FUNC0(FUNC2
           (str_out, 0, 0) == 1);
    FUNC0(FUNC4(str_out, 0, 0) == -1);
    FUNC0(FUNC4(str_out, OPSLIMIT, MEMLIMIT) == -1);
    FUNC0(FUNC2
           ("", OPSLIMIT, MEMLIMIT) == -1);

    FUNC7(salt);
    FUNC7(str_out);
    FUNC7(str_out2);
}