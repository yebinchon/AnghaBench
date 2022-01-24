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
struct ldc_channel {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HS ; 
 int /*<<< orphan*/  LDC_FLAG_RESET ; 
 int /*<<< orphan*/  LDC_INFO ; 
 int /*<<< orphan*/  LDC_VERS ; 
 struct ldc_packet* FUNC0 (struct ldc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ldc_version*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 
 struct ldc_version* ver_arr ; 

__attribute__((used)) static int FUNC3(struct ldc_channel *lp)
{
	struct ldc_packet *p;
	struct ldc_version *ver;
	unsigned long new_tail;

	ver = &ver_arr[0];

	FUNC1(HS, "SEND VER INFO maj[%u] min[%u]\n",
	       ver->major, ver->minor);

	p = FUNC0(lp, LDC_INFO, LDC_VERS,
				   ver, sizeof(*ver), &new_tail);
	if (p) {
		int err = FUNC2(lp, p, new_tail);
		if (!err)
			lp->flags &= ~LDC_FLAG_RESET;
		return err;
	}
	return -EBUSY;
}