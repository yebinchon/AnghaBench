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
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,int) ; 

void
FUNC3(unsigned char s[32], const unsigned char r[32])
{
    fe25519       r_fe;
    unsigned char x_sign;

    FUNC2(s, r, 32);
    x_sign = s[31] & 0x80;
    s[31] &= 0x7f;
    FUNC0(r_fe, s);
    FUNC1(s, r_fe, x_sign);
}