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
typedef  int u64 ;
typedef  int u32 ;
struct frame {int /*<<< orphan*/  sent; } ;

/* Variables and functions */
 int INT_MAX ; 
 int NSEC_PER_USEC ; 
 int UINT_MAX ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct frame *f)
{
	u64 delta = FUNC3(FUNC2(FUNC1(), f->sent));

	/* delta is normally under 4.2 seconds, avoid 64-bit division */
	if (FUNC4(delta <= UINT_MAX))
		return (u32)delta / NSEC_PER_USEC;

	/* avoid overflow after 71 minutes */
	if (delta > ((u64)INT_MAX * NSEC_PER_USEC))
		return INT_MAX;

	return FUNC0(delta, NSEC_PER_USEC);
}