#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int length; int response_code; } ;
struct init_sccb {int mask_length; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  sccb_mask_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_MASK ; 
 int SCLP_MASK_SIZE_COMPAT ; 
 int /*<<< orphan*/  FUNC0 (struct init_sccb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct init_sccb*) ; 
 int sclp_mask_compat_mode ; 

int FUNC4(struct init_sccb *sccb,
			      sccb_mask_t receive_mask,
			      sccb_mask_t send_mask)
{
retry:
	FUNC0(sccb, 0, sizeof(*sccb));
	sccb->header.length = sizeof(*sccb);
	if (sclp_mask_compat_mode)
		sccb->mask_length = SCLP_MASK_SIZE_COMPAT;
	else
		sccb->mask_length = sizeof(sccb_mask_t);
	FUNC1(sccb, receive_mask);
	FUNC2(sccb, send_mask);
	if (FUNC3(SCLP_CMDW_WRITE_EVENT_MASK, sccb))
		return -EIO;
	if ((sccb->header.response_code == 0x74f0) && !sclp_mask_compat_mode) {
		sclp_mask_compat_mode = true;
		goto retry;
	}
	if (sccb->header.response_code != 0x20)
		return -EIO;
	return 0;
}