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
typedef  int /*<<< orphan*/  const ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p2 ;
typedef  int /*<<< orphan*/  ge25519_p1p1 ;
typedef  int /*<<< orphan*/  ge25519_cached ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void
FUNC8(ge25519_p3 *h, const unsigned char *a, const ge25519_p3 *p)
{
    signed char     e[64];
    signed char     carry;
    ge25519_p1p1    r;
    ge25519_p2      s;
    ge25519_p1p1    t2, t3, t4, t5, t6, t7, t8;
    ge25519_p3      p2, p3, p4, p5, p6, p7, p8;
    ge25519_cached  pi[8];
    ge25519_cached  t;
    int             i;

    FUNC7(&pi[1 - 1], p);   /* p */

    FUNC6(&t2, p);
    FUNC3(&p2, &t2);
    FUNC7(&pi[2 - 1], &p2); /* 2p = 2*p */

    FUNC0(&t3, p, &pi[2 - 1]);
    FUNC3(&p3, &t3);
    FUNC7(&pi[3 - 1], &p3); /* 3p = 2p+p */

    FUNC6(&t4, &p2);
    FUNC3(&p4, &t4);
    FUNC7(&pi[4 - 1], &p4); /* 4p = 2*2p */

    FUNC0(&t5, p, &pi[4 - 1]);
    FUNC3(&p5, &t5);
    FUNC7(&pi[5 - 1], &p5); /* 5p = 4p+p */

    FUNC6(&t6, &p3);
    FUNC3(&p6, &t6);
    FUNC7(&pi[6 - 1], &p6); /* 6p = 2*3p */

    FUNC0(&t7, p, &pi[6 - 1]);
    FUNC3(&p7, &t7);
    FUNC7(&pi[7 - 1], &p7); /* 7p = 6p+p */

    FUNC6(&t8, &p4);
    FUNC3(&p8, &t8);
    FUNC7(&pi[8 - 1], &p8); /* 8p = 2*4p */

    for (i = 0; i < 32; ++i) {
        e[2 * i + 0] = (a[i] >> 0) & 15;
        e[2 * i + 1] = (a[i] >> 4) & 15;
    }
    /* each e[i] is between 0 and 15 */
    /* e[63] is between 0 and 7 */

    carry = 0;
    for (i = 0; i < 63; ++i) {
        e[i] += carry;
        carry = e[i] + 8;
        carry >>= 4;
        e[i] -= carry * ((signed char) 1 << 4);
    }
    e[63] += carry;
    /* each e[i] is between -8 and 8 */

    FUNC5(h);

    for (i = 63; i != 0; i--) {
        FUNC1(&t, pi, e[i]);
        FUNC0(&r, h, &t);

        FUNC2(&s, &r);
        FUNC4(&r, &s);
        FUNC2(&s, &r);
        FUNC4(&r, &s);
        FUNC2(&s, &r);
        FUNC4(&r, &s);
        FUNC2(&s, &r);
        FUNC4(&r, &s);

        FUNC3(h, &r);  /* *16 */
    }
    FUNC1(&t, pi, e[i]);
    FUNC0(&r, h, &t);

    FUNC3(h, &r);
}