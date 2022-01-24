#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ be128 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u64 h[], const be128 *k)
{
	u64 carry = FUNC1(k->a) & FUNC0(63) ? 1 : 0;

	h[0] = (FUNC1(k->b) << 1) | carry;
	h[1] = (FUNC1(k->a) << 1) | (FUNC1(k->b) >> 63);

	if (carry)
		h[1] ^= 0xc200000000000000UL;
}