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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned char*,int) ; 

int
FUNC4(unsigned char *q, const unsigned char *n,
                               const unsigned char *p)
{
    unsigned char *t = q;
    ge25519_p3     Q;
    ge25519_p3     P;
    unsigned int   i;

    if (FUNC1(&P, p) != 0) {
        return -1;
    }
    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    t[31] &= 127;
    FUNC0(&Q, t, &P);
    FUNC2(q, &Q);
    if (FUNC3(q, 32)) {
        return -1;
    }
    return 0;
}