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
 unsigned long long crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX ; 
 int FUNC0 (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(unsigned char *c, unsigned long long clen,
                            const unsigned char *n, const unsigned char *k)
{
    if (clen > crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX) {
        FUNC1();
    }
    return FUNC0(c, clen, n, k);
}