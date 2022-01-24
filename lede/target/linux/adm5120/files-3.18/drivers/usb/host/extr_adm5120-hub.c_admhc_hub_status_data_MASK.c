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
struct usb_hcd {int /*<<< orphan*/  flags; } ;
struct admhcd {int num_ports; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ADMHC_PS_CCS ; 
 int ADMHC_PS_CSC ; 
 int ADMHC_PS_OCIC ; 
 int ADMHC_PS_PESC ; 
 int ADMHC_PS_PRSC ; 
 int ADMHC_PS_PSSC ; 
 int ADMHC_RH_LPSC ; 
 int ADMHC_RH_OCIC ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (struct admhcd*,int) ; 
 int FUNC2 (struct admhcd*) ; 
 scalar_t__ FUNC3 (struct admhcd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct admhcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct usb_hcd *hcd, char *buf)
{
	struct admhcd	*ahcd = FUNC5(hcd);
	int		i, changed = 0, length = 1;
	int		any_connected = 0;
	unsigned long	flags;
	u32		status;

	FUNC7(&ahcd->lock, flags);
	if (!FUNC0(hcd))
		goto done;

	/* init status */
	status = FUNC2(ahcd);
	if (status & (ADMHC_RH_LPSC | ADMHC_RH_OCIC))
		buf[0] = changed = 1;
	else
		buf[0] = 0;
	if (ahcd->num_ports > 7) {
		buf[1] = 0;
		length++;
	}

	/* look at each port */
	for (i = 0; i < ahcd->num_ports; i++) {
		status = FUNC1(ahcd, i);

		/* can't autostop if ports are connected */
		any_connected |= (status & ADMHC_PS_CCS);

		if (status & (ADMHC_PS_CSC | ADMHC_PS_PESC | ADMHC_PS_PSSC
				| ADMHC_PS_OCIC | ADMHC_PS_PRSC)) {
			changed = 1;
			if (i < 7)
				buf[0] |= 1 << (i + 1);
			else
				buf[1] |= 1 << (i - 7);
		}
	}

	if (FUNC3(ahcd, changed,
			any_connected))
		FUNC6(HCD_FLAG_POLL_RH, &hcd->flags);
	else
		FUNC4(HCD_FLAG_POLL_RH, &hcd->flags);

done:
	FUNC8(&ahcd->lock, flags);

	return changed ? length : 0;
}