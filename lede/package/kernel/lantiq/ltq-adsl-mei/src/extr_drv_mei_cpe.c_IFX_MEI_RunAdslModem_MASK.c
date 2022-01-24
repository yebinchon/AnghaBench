#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_15__ {int count; } ;
struct TYPE_14__ {int /*<<< orphan*/ * nIrq; } ;
struct TYPE_13__ {scalar_t__ nCopy; scalar_t__ address; } ;
struct TYPE_12__ {int image_size; int modem_ready; int /*<<< orphan*/  wait_queue_modemready; int /*<<< orphan*/  nBar; TYPE_1__* adsl_mem_info; TYPE_3__* img_hdr; } ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  TYPE_2__ DSL_DEV_Device_t ;
typedef  int /*<<< orphan*/  ARC_SWP_PAGE_HDR ;
typedef  TYPE_3__ ARC_IMG_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_FAILURE ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 TYPE_10__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFX_DYING_GASP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int* LTQ_ICU_IM0_IER ; 
 int* LTQ_ICU_IM2_IER ; 
 int /*<<< orphan*/  LTQ_USB_OC_INT ; 
 int MAXSWAPSIZE ; 
 int MAX_BAR_REGISTERS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int SDRAM_SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mei_arc_swap_buff ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC14 (DSL_DEV_Device_t *pDev)
{
	int nSize = 0, idx = 0;
	uint32_t im0_register, im2_register;
//	DSL_DEV_WinHost_Message_t m;

	if (mei_arc_swap_buff == NULL) {
		mei_arc_swap_buff =
			(u32 *) FUNC12 (MAXSWAPSIZE * 4, GFP_KERNEL);
		if (mei_arc_swap_buff == NULL) {
			FUNC4 (">>> malloc fail for codeswap buff!!! <<<\n");
			return DSL_DEV_MEI_ERR_FAILURE;
		}
                FUNC2("allocate %dKB swap buff memory at: 0x%p\n", FUNC13(mei_arc_swap_buff)/1024, mei_arc_swap_buff);
	}

	FUNC0(pDev)->img_hdr =
		(ARC_IMG_HDR *) FUNC0(pDev)->adsl_mem_info[0].address;
	if ((FUNC0(pDev)->img_hdr->
	     count) * sizeof (ARC_SWP_PAGE_HDR) > SDRAM_SEGMENT_SIZE) {
		FUNC4 ("firmware header size is bigger than 64K segment size\n");
		return DSL_DEV_MEI_ERR_FAILURE;
	}
	// check image size
	for (idx = 0; idx < MAX_BAR_REGISTERS; idx++) {
		nSize += FUNC0(pDev)->adsl_mem_info[idx].nCopy;
	}
	if (nSize !=
	    FUNC0(pDev)->image_size) {
		FUNC4 ("Firmware download is not completed. Please download firmware again!\n");
		return DSL_DEV_MEI_ERR_FAILURE;
	}
	// TODO: check crc
	///

	FUNC6 (pDev);
	FUNC5 (pDev);
	FUNC1 (pDev, FUNC0(pDev)->nBar);

	//IFX_MEI_DMSG("Starting to meiDownloadBootCode\n");

	FUNC3 (pDev);

	im0_register = (*LTQ_ICU_IM0_IER) & (1 << 20);
	im2_register = (*LTQ_ICU_IM2_IER) & (1 << 20);

	/* Turn off irq */
	FUNC10 (LTQ_USB_OC_INT);
	FUNC10 (pDev->nIrq[IFX_DYING_GASP]);

	FUNC7 (pDev);

	FUNC9 (FUNC0(pDev)->wait_queue_modemready, 1000);

	FUNC8 (LTQ_USB_OC_INT);
	FUNC8 (pDev->nIrq[IFX_DYING_GASP]);

	/* Re-enable irq */
	FUNC11(pDev->nIrq[IFX_DYING_GASP]);
	*LTQ_ICU_IM0_IER |= im0_register;
	*LTQ_ICU_IM2_IER |= im2_register;

	if (FUNC0(pDev)->modem_ready != 1) {
		FUNC4 ("Modem failed to be ready!\n");
		return DSL_DEV_MEI_ERR_FAILURE;
	} else {
		FUNC2("Modem is ready.\n");
		return DSL_DEV_MEI_ERR_SUCCESS;
	}
}