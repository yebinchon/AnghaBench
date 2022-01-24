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
struct timer_list {int dummy; } ;
struct TYPE_4__ {int wpstat; int /*<<< orphan*/  connected; } ;
struct TYPE_3__ {int rd_data_reg_sel; unsigned char wd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned char DSKDRV0 ; 
 unsigned char DSKDRV1 ; 
 unsigned char DSKDRVNONE ; 
 int /*<<< orphan*/  FDCREG_STATUS ; 
 int FDCSTAT_WPROT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ UD ; 
 int /*<<< orphan*/  changed_floppies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__ sound_ym ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct timer_list *unused)
{
	static int    drive = 0;

	unsigned long flags;
	unsigned char old_porta;
	int			  stat;

	if (++drive > 1 || !UD.connected)
		drive = 0;

	/* protect against various other ints mucking around with the PSG */
	FUNC3(flags);

	if (!FUNC6()) {
		sound_ym.rd_data_reg_sel = 14;
		old_porta = sound_ym.rd_data_reg_sel;
		sound_ym.wd_data = (old_porta | DSKDRVNONE) &
			               ~(drive == 0 ? DSKDRV0 : DSKDRV1);
		stat = !!(FUNC1( FDCREG_STATUS ) & FDCSTAT_WPROT);
		sound_ym.wd_data = old_porta;

		if (stat != UD.wpstat) {
			FUNC0(( "wpstat[%d] = %d\n", drive, stat ));
			UD.wpstat = stat;
			FUNC4 (drive, &changed_floppies);
		}
	}
	FUNC2(flags);

	FUNC5();
}