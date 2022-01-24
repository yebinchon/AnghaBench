#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ tx_get; scalar_t__ tx_put; scalar_t__ tx_count; } ;
typedef  TYPE_2__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CHB ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int IRQ_CTS ; 
 int IRQ_DCD ; 
 scalar_t__ MGSL_MODE_HDLC ; 
 scalar_t__ PVR_DSR ; 
 unsigned char PVR_RI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC12(MGSLPC_INFO *info, struct tty_struct *tty)
{
	unsigned long flags;

	FUNC9(&info->lock, flags);

	FUNC7(info);
	FUNC11(info);
	info->tx_count = info->tx_put = info->tx_get = 0;

	if (info->params.mode == MGSL_MODE_HDLC || info->netcount)
		FUNC3(info);
	else
		FUNC1(info);

	FUNC8(info);

	info->dcd_chkcount = 0;
	info->cts_chkcount = 0;
	info->ri_chkcount = 0;
	info->dsr_chkcount = 0;

	FUNC4(info, CHB, IRQ_DCD | IRQ_CTS);
	FUNC5(info, (unsigned char) PVR_DSR | PVR_RI);
	FUNC2(info);

	if (info->netcount || (tty && FUNC0(tty)))
		FUNC6(info);

	FUNC10(&info->lock, flags);
}