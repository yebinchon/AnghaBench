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
typedef  int xwidget_part_num_t ;
typedef  int /*<<< orphan*/  widgetreg_t ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  nasid_t ;
typedef  int /*<<< orphan*/  cnodeid_t ;

/* Variables and functions */
#define  BRIDGE_WIDGET_PART_NUM 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_LLP_CSR ; 
 int volatile IIO_LLP_CSR_IS_UP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ WIDGET_ID ; 
#define  XBOW_WIDGET_PART_NUM 129 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  XXBOW_WIDGET_PART_NUM 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(cnodeid_t nid)
{
	volatile u64		hubreg;
	nasid_t			nasid;
	xwidget_part_num_t	partnum;
	widgetreg_t		widget_id;

	nasid = FUNC0(nid);
	hubreg = FUNC2(nasid, IIO_LLP_CSR);

	/* check whether the link is up */
	if (!(hubreg & IIO_LLP_CSR_IS_UP))
		return;

	widget_id = *(volatile widgetreg_t *)
		       (FUNC1(nasid, 0x0) + WIDGET_ID);
	partnum = FUNC3(widget_id);

	switch (partnum) {
	case BRIDGE_WIDGET_PART_NUM:
		FUNC4(nasid, 0x8, 0xa);
		break;
	case XBOW_WIDGET_PART_NUM:
	case XXBOW_WIDGET_PART_NUM:
		FUNC5("xtalk:n%d/0 xbow widget\n", nasid);
		FUNC6(nasid);
		break;
	default:
		FUNC5("xtalk:n%d/0 unknown widget (0x%x)\n", nasid, partnum);
		break;
	}
}