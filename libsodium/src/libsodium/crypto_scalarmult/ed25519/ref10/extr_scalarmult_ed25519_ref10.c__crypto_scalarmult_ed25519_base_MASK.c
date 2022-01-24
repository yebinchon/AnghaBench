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
typedef  int /*<<< orphan*/  ge25519_p3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC5(unsigned char *q,
                                const unsigned char *n, const int clamp)
{
    unsigned char *t = q;
    ge25519_p3     Q;
    unsigned int   i;

    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    if (clamp != 0) {
        FUNC0(t);
    }
    t[31] &= 127;

    FUNC3(&Q, t);
    FUNC2(q, &Q);
    if (FUNC1(q) != 0 || FUNC4(n, 32)) {
        return -1;
    }
    return 0;
}