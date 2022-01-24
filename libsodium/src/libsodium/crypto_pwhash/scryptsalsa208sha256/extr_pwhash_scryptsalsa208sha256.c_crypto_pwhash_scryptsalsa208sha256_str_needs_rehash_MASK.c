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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned int crypto_pwhash_scryptsalsa208sha256_STRBYTES ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (unsigned long long,size_t,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 unsigned int FUNC2 (char const*,unsigned int) ; 

int
FUNC3(
    const char str[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    unsigned long long opslimit, size_t memlimit)
{
    uint32_t N_log2, N_log2_;
    uint32_t p, p_;
    uint32_t r, r_;

    if (FUNC1(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        errno = EINVAL;
        return -1;
    }
    if (FUNC2(str, crypto_pwhash_scryptsalsa208sha256_STRBYTES) !=
        crypto_pwhash_scryptsalsa208sha256_STRBYTES - 1U) {
        errno = EINVAL;
        return -1;
    }
    if (FUNC0((const uint8_t *) str,
                              &N_log2_, &r_, &p_) == NULL) {
        errno = EINVAL;
        return -1;
    }
    if (N_log2 != N_log2_ || r != r_ || p != p_) {
        return 1;
    }
    return 0;
}