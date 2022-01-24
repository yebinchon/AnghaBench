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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  escrypt_local_t ;
typedef  int (* escrypt_kdf_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 () ; 

int
FUNC5(const uint8_t *passwd, size_t passwdlen,
                                      const uint8_t *salt, size_t saltlen,
                                      uint64_t N, uint32_t r, uint32_t p,
                                      uint8_t *buf, size_t buflen)
{
    escrypt_kdf_t   escrypt_kdf;
    escrypt_local_t local;
    int             retval;

    if (FUNC1(&local)) {
        return -1; /* LCOV_EXCL_LINE */
    }
#if defined(HAVE_EMMINTRIN_H)
    escrypt_kdf =
        sodium_runtime_has_sse2() ? escrypt_kdf_sse : escrypt_kdf_nosse;
#else
    escrypt_kdf = escrypt_kdf_nosse;
#endif
    retval = escrypt_kdf(&local, passwd, passwdlen, salt, saltlen, N, r, p, buf,
                         buflen);
    if (FUNC0(&local)) {
        return -1; /* LCOV_EXCL_LINE */
    }
    return retval;
}