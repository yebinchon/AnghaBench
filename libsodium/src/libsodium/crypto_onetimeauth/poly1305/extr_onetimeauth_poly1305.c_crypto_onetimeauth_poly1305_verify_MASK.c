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
struct TYPE_2__ {int (* onetimeauth_verify ) (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ;} ;

/* Variables and functions */
 TYPE_1__* implementation ; 
 int FUNC0 (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ; 

int
FUNC1(const unsigned char *h,
                                   const unsigned char *in,
                                   unsigned long long   inlen,
                                   const unsigned char *k)
{
    return implementation->onetimeauth_verify(h, in, inlen, k);
}