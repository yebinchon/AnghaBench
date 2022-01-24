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
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *) ; 

void
FUNC6(unsigned char s[32], const unsigned char h[64])
{
    fe25519        r0, r1;
    ge25519_cached p1_cached;
    ge25519_p1p1   p_p1p1;
    ge25519_p3     p0, p1;
    ge25519_p3     p;

    FUNC0(r0, h);
    FUNC0(r1, h + 32);
    FUNC4(&p0, r0);
    FUNC4(&p1, r1);
    FUNC3(&p1_cached, &p1);
    FUNC1(&p_p1p1, &p0, &p1_cached);
    FUNC2(&p, &p_p1p1);
    FUNC5(s, &p);
}