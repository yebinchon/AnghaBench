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

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 long FUNC1 (unsigned long,size_t,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static inline long FUNC2(unsigned long addr, size_t len,
			unsigned long prot, unsigned long flags,
			unsigned long fd, unsigned long off, int shift)
{
	long ret = -EINVAL;

	if (!FUNC0(prot, addr))
		goto out;

	if (shift) {
		if (off & ((1 << shift) - 1))
			goto out;
		off >>= shift;
	}

	ret = FUNC1(addr, len, prot, flags, fd, off);
out:
	return ret;
}