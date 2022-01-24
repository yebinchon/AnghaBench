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
 unsigned long long crypto_secretbox_MACBYTES ; 
 int FUNC0 (unsigned char*,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*) ; 

int
FUNC1(unsigned char *m, const unsigned char *c,
                           unsigned long long clen, const unsigned char *n,
                           const unsigned char *k)
{
    if (clen < crypto_secretbox_MACBYTES) {
        return -1;
    }
    return FUNC0(m, c + crypto_secretbox_MACBYTES, c,
                                          clen - crypto_secretbox_MACBYTES,
                                          n, k);
}