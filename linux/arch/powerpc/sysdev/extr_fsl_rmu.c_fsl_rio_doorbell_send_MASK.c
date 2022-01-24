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
typedef  int u16 ;
struct rio_mport {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dbell_regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  odmr; int /*<<< orphan*/  oddatr; int /*<<< orphan*/  oddpr; int /*<<< orphan*/  odretcr; } ;

/* Variables and functions */
 TYPE_2__* dbell ; 
 int /*<<< orphan*/  fsl_rio_doorbell_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct rio_mport *mport,
				int index, u16 destid, u16 data)
{
	unsigned long flags;

	FUNC1("fsl_doorbell_send: index %d destid %4.4x data %4.4x\n",
		 index, destid, data);

	FUNC2(&fsl_rio_doorbell_lock, flags);

	/* In the serial version silicons, such as MPC8548, MPC8641,
	 * below operations is must be.
	 */
	FUNC0(&dbell->dbell_regs->odmr, 0x00000000);
	FUNC0(&dbell->dbell_regs->odretcr, 0x00000004);
	FUNC0(&dbell->dbell_regs->oddpr, destid << 16);
	FUNC0(&dbell->dbell_regs->oddatr, (index << 20) | data);
	FUNC0(&dbell->dbell_regs->odmr, 0x00000001);

	FUNC3(&fsl_rio_doorbell_lock, flags);

	return 0;
}