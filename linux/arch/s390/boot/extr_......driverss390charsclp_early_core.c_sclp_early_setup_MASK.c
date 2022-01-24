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
struct init_sccb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long EVTYP_MSG_MASK ; 
 unsigned long EVTYP_OPCMD_MASK ; 
 unsigned long EVTYP_VT220MSG_MASK ; 
 int PAGE_SIZE ; 
 unsigned long FUNC1 (struct init_sccb*) ; 
 int FUNC2 (struct init_sccb*) ; 
 scalar_t__ sclp_early_sccb ; 
 int FUNC3 (struct init_sccb*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(int disable, int *have_linemode, int *have_vt220)
{
	unsigned long receive_mask, send_mask;
	struct init_sccb *sccb;
	int rc;

	FUNC0(sizeof(struct init_sccb) > PAGE_SIZE);

	*have_linemode = *have_vt220 = 0;
	sccb = (struct init_sccb *) sclp_early_sccb;
	receive_mask = disable ? 0 : EVTYP_OPCMD_MASK;
	send_mask = disable ? 0 : EVTYP_VT220MSG_MASK | EVTYP_MSG_MASK;
	rc = FUNC3(sccb, receive_mask, send_mask);
	if (rc)
		return rc;
	*have_linemode = FUNC2(sccb);
	*have_vt220 = !!(FUNC1(sccb) & EVTYP_VT220MSG_MASK);
	return rc;
}