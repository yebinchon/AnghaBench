#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {unsigned int frequency; } ;
struct TYPE_3__ {int nr_pstates; int nominal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* powernv_freqs ; 
 TYPE_1__ powernv_pstate_info ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(u8 pstate_id)
{
	int i;

	i = FUNC2(pstate_id);
	if (i >= powernv_pstate_info.nr_pstates || i < 0) {
		FUNC1("PState id 0x%x outside of PState table, reporting nominal id 0x%x instead\n",
			pstate_id, FUNC0(powernv_pstate_info.nominal));
		i = powernv_pstate_info.nominal;
	}

	return powernv_freqs[i].frequency;
}