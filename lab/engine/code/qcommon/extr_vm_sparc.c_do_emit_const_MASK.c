#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int i; } ;
struct src_insn {int dst_reg_flags; TYPE_1__ arg; int /*<<< orphan*/  i_count; } ;
struct func_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G0 ; 
 int /*<<< orphan*/  LDFI ; 
 int /*<<< orphan*/  ORI ; 
 int REG_FLAGS_FLOAT ; 
 int /*<<< orphan*/  SETHI ; 
 int /*<<< orphan*/  FUNC0 (struct func_info* const) ; 
 int /*<<< orphan*/  FUNC1 (struct func_info* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct func_info* const) ; 
 int /*<<< orphan*/  rVMDATA ; 
 int FUNC4 (struct func_info* const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct func_info* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct func_info * const fp, struct src_insn *sp)
{
	FUNC5(fp, sp->i_count);
	if (sp->dst_reg_flags & REG_FLAGS_FLOAT) {
		FUNC2(LDFI, rVMDATA, FUNC4(fp, sp->arg.i), FUNC1(fp));
	} else {
		if ((sp->arg.i & ~0x3ff) == 0) {
			FUNC2(ORI, G0, sp->arg.i & 0x3ff, FUNC3(fp));
		} else if ((sp->arg.i & 0x3ff) == 0) {
			FUNC2(SETHI, sp->arg.i >> 10, FUNC3(fp));
		} else {
			FUNC2(SETHI, sp->arg.i >> 10, FUNC3(fp));
			FUNC2(ORI, FUNC3(fp), sp->arg.i & 0x3ff, FUNC3(fp));
		}
	}
	FUNC0(fp);
}