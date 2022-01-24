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
typedef  int u32 ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_FAILURE ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MEI_TO_ARC_MAILBOX ; 
 int ME_DX_AD ; 
 scalar_t__ ME_DX_DATA ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC2 (DSL_DEV_Device_t * pDev, u32 destaddr,
			u32 * databuff, u32 databuffsize)
{
	u32 *p = databuff;
	u32 temp;

	if (destaddr & 3)
		return DSL_DEV_MEI_ERR_FAILURE;

	//      Set the write transfer address
	FUNC0 (pDev, ME_DX_AD, destaddr);

	//      Write the data pushed across DMA
	while (databuffsize--) {
		temp = *p;
		if (destaddr == MEI_TO_ARC_MAILBOX)
			FUNC1 (temp);
		FUNC0 (pDev, (u32) ME_DX_DATA, temp);
		p++;
	}

	return DSL_DEV_MEI_ERR_SUCCESS;

}