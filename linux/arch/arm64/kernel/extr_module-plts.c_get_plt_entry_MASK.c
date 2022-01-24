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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct plt_entry {int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_INSN_BRANCH_NOLINK ; 
 int /*<<< orphan*/  AARCH64_INSN_REG_16 ; 
 struct plt_entry FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

struct plt_entry FUNC3(u64 dst, void *pc)
{
	struct plt_entry plt;
	static u32 br;

	if (!br)
		br = FUNC1(AARCH64_INSN_REG_16,
						 AARCH64_INSN_BRANCH_NOLINK);

	plt = FUNC0(dst, (u64)pc, AARCH64_INSN_REG_16);
	plt.br = FUNC2(br);

	return plt;
}