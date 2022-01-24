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
struct pt_regs {int dummy; } ;
struct fast_pool {int /*<<< orphan*/  reg_idx; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static __u32 FUNC2(struct fast_pool *f, struct pt_regs *regs)
{
	__u32 *ptr = (__u32 *) regs;
	unsigned int idx;

	if (regs == NULL)
		return 0;
	idx = FUNC0(f->reg_idx);
	if (idx >= sizeof(struct pt_regs) / sizeof(__u32))
		idx = 0;
	ptr += idx++;
	FUNC1(f->reg_idx, idx);
	return *ptr;
}