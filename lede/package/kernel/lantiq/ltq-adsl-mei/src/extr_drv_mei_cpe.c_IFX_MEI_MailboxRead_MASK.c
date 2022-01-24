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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_TO_MEI_MAILBOX ; 
 int /*<<< orphan*/  ARC_TO_MEI_MSGAV ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ME_ARC2ME_STAT ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC2 (DSL_DEV_Device_t * pDev, u16 * msgdestbuffer,
			   u16 msgsize)
{
	DSL_DEV_MeiError_t meiMailboxError = DSL_DEV_MEI_ERR_SUCCESS;
	//      Read from mailbox
	meiMailboxError =
		FUNC0 (pDev, ARC_TO_MEI_MAILBOX, (u32 *) msgdestbuffer, msgsize / 2);

	//      Notify arc that mailbox read completed
	FUNC1 (pDev, (u32) ME_ARC2ME_STAT, ARC_TO_MEI_MSGAV);

	return meiMailboxError;
}