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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 

int FUNC1(const u32 *addr, const u32 *base,
		    const u32 *size, int na, int ns)
{
	u64 a = FUNC0(addr, na);
	u64 b = FUNC0(base, na);

	if (a < b)
		return 1;

	b += FUNC0(size, ns);
	if (a >= b)
		return 1;

	return 0;
}