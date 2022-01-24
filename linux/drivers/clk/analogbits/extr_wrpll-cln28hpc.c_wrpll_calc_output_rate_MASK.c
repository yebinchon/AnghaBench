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
typedef  unsigned long u8 ;
typedef  unsigned long u64 ;
struct wrpll_cfg {int flags; int divf; unsigned long divq; scalar_t__ divr; } ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int WRPLL_FLAGS_EXT_FEEDBACK_MASK ; 
 unsigned long FUNC1 (struct wrpll_cfg const*) ; 
 unsigned long FUNC2 (unsigned long,scalar_t__) ; 

unsigned long FUNC3(const struct wrpll_cfg *c,
				     unsigned long parent_rate)
{
	u8 fbdiv;
	u64 n;

	if (c->flags & WRPLL_FLAGS_EXT_FEEDBACK_MASK) {
		FUNC0(1, "external feedback mode not yet supported");
		return ULONG_MAX;
	}

	fbdiv = FUNC1(c);
	n = parent_rate * fbdiv * (c->divf + 1);
	n = FUNC2(n, c->divr + 1);
	n >>= c->divq;

	return n;
}