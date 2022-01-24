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
typedef  int /*<<< orphan*/  secp256k1_scalar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC1 (size_t*,unsigned char const**,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(secp256k1_scalar *r, const unsigned char **sig, const unsigned char *sigend) {
    int overflow = 0;
    unsigned char ra[32] = {0};
    size_t rlen;

    if (*sig == sigend || **sig != 0x02) {
        /* Not a primitive integer (X.690-0207 8.3.1). */
        return 0;
    }
    (*sig)++;
    if (FUNC1(&rlen, sig, sigend) == 0) {
        return 0;
    }
    if (rlen == 0 || *sig + rlen > sigend) {
        /* Exceeds bounds or not at least length 1 (X.690-0207 8.3.1).  */
        return 0;
    }
    if (**sig == 0x00 && rlen > 1 && (((*sig)[1]) & 0x80) == 0x00) {
        /* Excessive 0x00 padding. */
        return 0;
    }
    if (**sig == 0xFF && rlen > 1 && (((*sig)[1]) & 0x80) == 0x80) {
        /* Excessive 0xFF padding. */
        return 0;
    }
    if ((**sig & 0x80) == 0x80) {
        /* Negative. */
        overflow = 1;
    }
    /* There is at most one leading zero byte:
     * if there were two leading zero bytes, we would have failed and returned 0
     * because of excessive 0x00 padding already. */
    if (rlen > 0 && **sig == 0) {
        /* Skip leading zero byte */
        rlen--;
        (*sig)++;
    }
    if (rlen > 32) {
        overflow = 1;
    }
    if (!overflow) {
        FUNC0(ra + 32 - rlen, *sig, rlen);
        FUNC2(r, ra, &overflow);
    }
    if (overflow) {
        FUNC3(r, 0);
    }
    (*sig) += rlen;
    return 1;
}