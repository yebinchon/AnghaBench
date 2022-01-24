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
struct ldc_version {scalar_t__ major; scalar_t__ minor; } ;
struct ldc_channel {scalar_t__ hs_state; struct ldc_version ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS ; 
 int FUNC0 (struct ldc_channel*) ; 
 scalar_t__ LDC_HS_GOTVERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ldc_channel*) ; 

__attribute__((used)) static int FUNC3(struct ldc_channel *lp, struct ldc_version *vp)
{
	FUNC1(HS, "GOT VERSION ACK major[%x] minor[%x]\n",
	       vp->major, vp->minor);

	if (lp->hs_state == LDC_HS_GOTVERS) {
		if (lp->ver.major != vp->major ||
		    lp->ver.minor != vp->minor)
			return FUNC0(lp);
	} else {
		lp->ver = *vp;
		lp->hs_state = LDC_HS_GOTVERS;
	}
	if (FUNC2(lp))
		return FUNC0(lp);
	return 0;
}