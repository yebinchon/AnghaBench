#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pMWAVE_DEVICE_DATA ;
struct TYPE_3__ {size_t nr_registered_attrs; int device_registered; scalar_t__ sLine; int /*<<< orphan*/  rBDData; scalar_t__ bBDInitialized; scalar_t__ bResourcesClaimed; scalar_t__ bDSPEnabled; scalar_t__ bMwaveDevRegistered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_MWAVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mwave_dev_attrs ; 
 int /*<<< orphan*/  mwave_device ; 
 int /*<<< orphan*/  mwave_misc_dev ; 
 TYPE_1__ mwave_s_mdd ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
	pMWAVE_DEVICE_DATA pDrvData = &mwave_s_mdd;

	FUNC0(TRACE_MWAVE, "mwavedd::mwave_exit entry\n");

#if 0
	for (i = 0; i < pDrvData->nr_registered_attrs; i++)
		device_remove_file(&mwave_device, mwave_dev_attrs[i]);
	pDrvData->nr_registered_attrs = 0;

	if (pDrvData->device_registered) {
		device_unregister(&mwave_device);
		pDrvData->device_registered = false;
	}
#endif

	if ( pDrvData->sLine >= 0 ) {
		FUNC4(pDrvData->sLine);
	}
	if (pDrvData->bMwaveDevRegistered) {
		FUNC3(&mwave_misc_dev);
	}
	if (pDrvData->bDSPEnabled) {
		FUNC6(&pDrvData->rBDData);
	}
	if (pDrvData->bResourcesClaimed) {
		FUNC7(&pDrvData->rBDData);
	}
	if (pDrvData->bBDInitialized) {
		FUNC5(&pDrvData->rBDData);
	}

	FUNC0(TRACE_MWAVE, "mwavedd::mwave_exit exit\n");
}