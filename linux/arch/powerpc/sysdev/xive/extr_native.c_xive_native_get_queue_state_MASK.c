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
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(u32 vp_id, u32 prio, u32 *qtoggle, u32 *qindex)
{
	__be32 opal_qtoggle;
	__be32 opal_qindex;
	s64 rc;

	rc = FUNC1(vp_id, prio, &opal_qtoggle,
				       &opal_qindex);
	if (rc) {
		FUNC2("OPAL failed to get queue state for VCPU %d/%d : %lld\n",
		       vp_id, prio, rc);
		return -EIO;
	}

	if (qtoggle)
		*qtoggle = FUNC0(opal_qtoggle);
	if (qindex)
		*qindex = FUNC0(opal_qindex);

	return 0;
}