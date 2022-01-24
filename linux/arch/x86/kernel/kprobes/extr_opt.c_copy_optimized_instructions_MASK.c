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
typedef  int /*<<< orphan*/  u8 ;
struct insn {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int RELATIVEJUMP_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct insn*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct insn*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(u8 *dest, u8 *src, u8 *real)
{
	struct insn insn;
	int len = 0, ret;

	while (len < RELATIVEJUMP_SIZE) {
		ret = FUNC0(dest + len, src + len, real + len, &insn);
		if (!ret || !FUNC2(&insn, src + len))
			return -EINVAL;
		len += ret;
	}
	/* Check whether the address range is reserved */
	if (FUNC3(src, src + len - 1) ||
	    FUNC1(src, src + len - 1) ||
	    FUNC4(src, src + len - 1))
		return -EBUSY;

	return len;
}