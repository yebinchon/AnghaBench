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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  escrypt_local_t ;

/* Variables and functions */
 int crypto_pwhash_scryptsalsa208sha256_STRBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char const*,int) ; 

int
FUNC7(
    const char        str[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    const char *const passwd, unsigned long long passwdlen)
{
    char            wanted[crypto_pwhash_scryptsalsa208sha256_STRBYTES];
    escrypt_local_t escrypt_local;
    int             ret = -1;

    if (FUNC6(str, crypto_pwhash_scryptsalsa208sha256_STRBYTES) !=
        crypto_pwhash_scryptsalsa208sha256_STRBYTES - 1U) {
        return -1;
    }
    if (FUNC1(&escrypt_local) != 0) {
        return -1; /* LCOV_EXCL_LINE */
    }
    FUNC3(wanted, 0, sizeof wanted);
    if (FUNC2(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) str, (uint8_t *) wanted,
                  sizeof wanted) == NULL) {
        FUNC0(&escrypt_local);
        return -1;
    }
    FUNC0(&escrypt_local);
    ret = FUNC4(wanted, str, sizeof wanted);
    FUNC5(wanted, sizeof wanted);

    return ret;
}