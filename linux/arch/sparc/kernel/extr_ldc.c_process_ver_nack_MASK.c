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
struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ldc_channel*) ; 
 int /*<<< orphan*/  LDC_INFO ; 
 int /*<<< orphan*/  LDC_VERS ; 
 struct ldc_version* FUNC1 (scalar_t__) ; 
 struct ldc_packet* FUNC2 (struct ldc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ldc_version*,int,unsigned long*) ; 
 int FUNC3 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ldc_channel *lp, struct ldc_version *vp)
{
	struct ldc_version *vap;
	struct ldc_packet *p;
	unsigned long new_tail;

	if (vp->major == 0 && vp->minor == 0)
		return FUNC0(lp);

	vap = FUNC1(vp->major);
	if (!vap)
		return FUNC0(lp);

	p = FUNC2(lp, LDC_INFO, LDC_VERS,
					   vap, sizeof(*vap),
					   &new_tail);
	if (!p)
		return FUNC0(lp);

	return FUNC3(lp, p, new_tail);
}