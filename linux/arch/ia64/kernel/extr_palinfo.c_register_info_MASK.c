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
struct seq_file {int dummy; } ;
struct TYPE_3__ {size_t ph_data; } ;
typedef  TYPE_1__ pal_hints_u_t ;

/* Variables and functions */
 size_t RSE_HINTS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int*,int) ; 
 scalar_t__ FUNC1 (unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC2 (int,int*,int*) ; 
 scalar_t__ FUNC3 (unsigned long*,TYPE_1__*) ; 
 char** rse_hints ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m)
{
	u64 reg_info[2];
	u64 info;
	unsigned long phys_stacked;
	pal_hints_u_t hints;
	unsigned long iregs, dregs;
	static const char * const info_type[] = {
		"Implemented AR(s)",
		"AR(s) with read side-effects",
		"Implemented CR(s)",
		"CR(s) with read side-effects",
	};

	for(info=0; info < 4; info++) {
		if (FUNC2(info, &reg_info[0], &reg_info[1]) != 0)
			return 0;
		FUNC4(m, "%-32s : ", info_type[info]);
		FUNC0(m, reg_info, 128);
		FUNC5(m, '\n');
	}

	if (FUNC3(&phys_stacked, &hints) == 0)
		FUNC4(m,
			   "RSE stacked physical registers   : %ld\n"
			   "RSE load/store hints             : %ld (%s)\n",
			   phys_stacked, hints.ph_data,
			   hints.ph_data < RSE_HINTS_COUNT ? rse_hints[hints.ph_data]: "(??)");

	if (FUNC1(&iregs, &dregs))
		return 0;

	FUNC4(m,
		   "Instruction debug register pairs : %ld\n"
		   "Data debug register pairs        : %ld\n", iregs, dregs);

	return 0;
}