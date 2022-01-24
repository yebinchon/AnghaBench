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
struct zpci_dev {void* state; int /*<<< orphan*/  fh; int /*<<< orphan*/  fid; int /*<<< orphan*/  bus; } ;
struct zpci_ccdf_avail {int /*<<< orphan*/  fid; int /*<<< orphan*/  fh; int /*<<< orphan*/  pec; } ;
struct pci_dev {int /*<<< orphan*/  error_state; } ;
typedef  enum zpci_state { ____Placeholder_zpci_state } zpci_state ;

/* Variables and functions */
 int /*<<< orphan*/  ZPCI_DEVFN ; 
 void* ZPCI_FN_STATE_CONFIGURED ; 
 int ZPCI_FN_STATE_RESERVED ; 
 void* ZPCI_FN_STATE_STANDBY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct zpci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct zpci_dev*) ; 
 int FUNC15 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct zpci_ccdf_avail*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct zpci_dev*) ; 

__attribute__((used)) static void FUNC19(struct zpci_ccdf_avail *ccdf)
{
	struct zpci_dev *zdev = FUNC3(ccdf->fid);
	struct pci_dev *pdev = NULL;
	enum zpci_state state;
	int ret;

	if (zdev)
		pdev = FUNC5(zdev->bus, ZPCI_DEVFN);

	FUNC11("%s: Event 0x%x reconfigured PCI function 0x%x\n",
		pdev ? FUNC7(pdev) : "n/a", ccdf->pec, ccdf->fid);
	FUNC16("avail CCDF:\n");
	FUNC17(ccdf, sizeof(*ccdf));

	switch (ccdf->pec) {
	case 0x0301: /* Reserved|Standby -> Configured */
		if (!zdev) {
			ret = FUNC0(ccdf->fid, ccdf->fh, 0);
			if (ret)
				break;
			zdev = FUNC3(ccdf->fid);
		}
		if (!zdev || zdev->state != ZPCI_FN_STATE_STANDBY)
			break;
		zdev->state = ZPCI_FN_STATE_CONFIGURED;
		zdev->fh = ccdf->fh;
		ret = FUNC15(zdev);
		if (ret)
			break;
		FUNC6();
		FUNC8(zdev->bus);
		FUNC10();
		break;
	case 0x0302: /* Reserved -> Standby */
		if (!zdev)
			FUNC0(ccdf->fid, ccdf->fh, 0);
		break;
	case 0x0303: /* Deconfiguration requested */
		if (!zdev)
			break;
		if (pdev)
			FUNC9(pdev);

		ret = FUNC14(zdev);
		if (ret)
			break;

		ret = FUNC12(zdev->fid);
		FUNC13(3, "deconf fid:%x, rc:%d\n", zdev->fid, ret);
		if (!ret)
			zdev->state = ZPCI_FN_STATE_STANDBY;

		break;
	case 0x0304: /* Configured -> Standby|Reserved */
		if (!zdev)
			break;
		if (pdev) {
			/* Give the driver a hint that the function is
			 * already unusable. */
			pdev->error_state = pci_channel_io_perm_failure;
			FUNC9(pdev);
		}

		zdev->fh = ccdf->fh;
		FUNC14(zdev);
		zdev->state = ZPCI_FN_STATE_STANDBY;
		if (!FUNC1(ccdf->fid, &state) &&
		    state == ZPCI_FN_STATE_RESERVED) {
			FUNC18(zdev);
		}
		break;
	case 0x0306: /* 0x308 or 0x302 for multiple devices */
		FUNC2();
		break;
	case 0x0308: /* Standby -> Reserved */
		if (!zdev)
			break;
		FUNC18(zdev);
		break;
	default:
		break;
	}
	FUNC4(pdev);
}