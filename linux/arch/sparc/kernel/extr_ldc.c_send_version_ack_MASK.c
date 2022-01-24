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
struct ldc_version {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HS ; 
 int /*<<< orphan*/  LDC_ACK ; 
 int /*<<< orphan*/  LDC_VERS ; 
 struct ldc_packet* FUNC0 (struct ldc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ldc_version*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ldc_channel *lp,
			    struct ldc_version *vp)
{
	struct ldc_packet *p;
	unsigned long new_tail;

	p = FUNC0(lp, LDC_ACK, LDC_VERS,
				   vp, sizeof(*vp), &new_tail);
	if (p) {
		FUNC1(HS, "SEND VER ACK maj[%u] min[%u]\n",
		       vp->major, vp->minor);

		return FUNC2(lp, p, new_tail);
	}
	return -EBUSY;
}