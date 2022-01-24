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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTP_CFG ; 
 int /*<<< orphan*/ * g_net_dev ; 
 scalar_t__ g_showtime ; 
 int /*<<< orphan*/ * g_xdata_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void)
{
	int i;

	if ( !g_showtime )
		return -1;

	//#ifdef CONFIG_VR9
	//    IFX_REG_W32_MASK(0, 1 << 17, FFSM_CFG0);
	//#endif

	FUNC1(0x00, UTP_CFG);

	for ( i = 0; i < FUNC0(g_net_dev); i++ )
		FUNC2(g_net_dev[i]);

	g_showtime = 0;

	//  TODO: ReTX clean state
	g_xdata_addr = NULL;

	FUNC3("leave showtime\n");

	return 0;
}