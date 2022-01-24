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
struct pd_unit {int dummy; } ;

/* Variables and functions */
 int ERR_TMO ; 
 int PD_SPIN ; 
 int /*<<< orphan*/  PD_SPIN_DEL ; 
 int STAT_BUSY ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct pd_unit*,char*,int) ; 
 int FUNC1 (struct pd_unit*,int) ; 
 int FUNC2 (struct pd_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pd_unit *disk, int w, char *msg)
{				/* polled wait */
	int k, r, e;

	k = 0;
	while (k < PD_SPIN) {
		r = FUNC2(disk);
		k++;
		if (((r & w) == w) && !(r & STAT_BUSY))
			break;
		FUNC3(PD_SPIN_DEL);
	}
	e = (FUNC1(disk, 1) << 8) + FUNC1(disk, 7);
	if (k >= PD_SPIN)
		e |= ERR_TMO;
	if ((e & (STAT_ERR | ERR_TMO)) && (msg != NULL))
		FUNC0(disk, msg, e);
	return e;
}