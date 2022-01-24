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
typedef  void* u64 ;
typedef  void* u32 ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*,scalar_t__) ; 

int FUNC4(u32 vp_id, u32 prio,
			       u64 *out_qpage,
			       u64 *out_qsize,
			       u64 *out_qeoi_page,
			       u32 *out_escalate_irq,
			       u64 *out_qflags)
{
	__be64 qpage;
	__be64 qsize;
	__be64 qeoi_page;
	__be32 escalate_irq;
	__be64 qflags;
	s64 rc;

	rc = FUNC2(vp_id, prio, &qpage, &qsize,
				      &qeoi_page, &escalate_irq, &qflags);
	if (rc) {
		FUNC3("OPAL failed to get queue info for VCPU %d/%d : %lld\n",
		       vp_id, prio, rc);
		return -EIO;
	}

	if (out_qpage)
		*out_qpage = FUNC1(qpage);
	if (out_qsize)
		*out_qsize = FUNC0(qsize);
	if (out_qeoi_page)
		*out_qeoi_page = FUNC1(qeoi_page);
	if (out_escalate_irq)
		*out_escalate_irq = FUNC0(escalate_irq);
	if (out_qflags)
		*out_qflags = FUNC1(qflags);

	return 0;
}