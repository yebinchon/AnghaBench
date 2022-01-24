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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ ARGON2_OK ; 
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  STR_HASHBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,size_t,unsigned char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t crypto_pwhash_argon2id_MEMLIMIT_MAX ; 
 size_t crypto_pwhash_argon2id_MEMLIMIT_MIN ; 
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MAX ; 
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MIN ; 
 unsigned long long crypto_pwhash_argon2id_PASSWD_MAX ; 
 unsigned long long crypto_pwhash_argon2id_PASSWD_MIN ; 
 int crypto_pwhash_argon2id_SALTBYTES ; 
 int /*<<< orphan*/  crypto_pwhash_argon2id_STRBYTES ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

int
FUNC3(char out[crypto_pwhash_argon2id_STRBYTES],
                           const char *const passwd,
                           unsigned long long passwdlen,
                           unsigned long long opslimit, size_t memlimit)
{
    unsigned char salt[crypto_pwhash_argon2id_SALTBYTES];

    FUNC1(out, 0, crypto_pwhash_argon2id_STRBYTES);
    if (passwdlen > crypto_pwhash_argon2id_PASSWD_MAX ||
        opslimit > crypto_pwhash_argon2id_OPSLIMIT_MAX ||
        memlimit > crypto_pwhash_argon2id_MEMLIMIT_MAX) {
        errno = EFBIG;
        return -1;
    }
    if (passwdlen < crypto_pwhash_argon2id_PASSWD_MIN ||
        opslimit < crypto_pwhash_argon2id_OPSLIMIT_MIN ||
        memlimit < crypto_pwhash_argon2id_MEMLIMIT_MIN) {
        errno = EINVAL;
        return -1;
    }
    FUNC2(salt, sizeof salt);
    if (FUNC0((uint32_t) opslimit, (uint32_t) (memlimit / 1024U),
                              (uint32_t) 1U, passwd, (size_t) passwdlen, salt,
                              sizeof salt, STR_HASHBYTES, out,
                              crypto_pwhash_argon2id_STRBYTES) != ARGON2_OK) {
        return -1; /* LCOV_EXCL_LINE */
    }
    return 0;
}