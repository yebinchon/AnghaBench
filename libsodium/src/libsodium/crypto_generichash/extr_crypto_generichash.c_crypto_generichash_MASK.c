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
 int FUNC0 (unsigned char*,size_t,unsigned char const*,unsigned long long,unsigned char const*,size_t) ; 

int
FUNC1(unsigned char *out, size_t outlen, const unsigned char *in,
                   unsigned long long inlen, const unsigned char *key,
                   size_t keylen)
{
    return FUNC0(out, outlen, in, inlen, key, keylen);
}