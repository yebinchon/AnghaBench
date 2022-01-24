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
typedef  int /*<<< orphan*/  ge25519_p1p1 ;
typedef  int /*<<< orphan*/  ge25519_cached ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *) ; 

int
FUNC5(unsigned char *r,
                             const unsigned char *p, const unsigned char *q)
{
    ge25519_p3     p_p3, q_p3, r_p3;
    ge25519_p1p1   r_p1p1;
    ge25519_cached q_cached;

    if (FUNC3(&p_p3, p) != 0 ||
        FUNC3(&q_p3, q) != 0) {
        return -1;
    }
    FUNC2(&q_cached, &q_p3);
    FUNC0(&r_p1p1, &p_p3, &q_cached);
    FUNC1(&r_p3, &r_p1p1);
    FUNC4(r, &r_p3);

    return 0;
}