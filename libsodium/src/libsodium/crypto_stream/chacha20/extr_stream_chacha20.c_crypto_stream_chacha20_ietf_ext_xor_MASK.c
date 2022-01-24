#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* stream_ietf_ext_xor_ic ) (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ;} ;

/* Variables and functions */
 unsigned long long crypto_stream_chacha20_MESSAGEBYTES_MAX ; 
 TYPE_1__* implementation ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(unsigned char *c, const unsigned char *m,
                                    unsigned long long mlen, const unsigned char *n,
                                    const unsigned char *k)
{
    if (mlen > crypto_stream_chacha20_MESSAGEBYTES_MAX) {
        FUNC0();
    }
    return implementation->stream_ietf_ext_xor_ic(c, m, mlen, n, 0U, k);
}