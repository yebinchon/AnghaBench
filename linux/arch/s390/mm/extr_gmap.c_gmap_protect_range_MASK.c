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
struct gmap {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 unsigned long HPAGE_MASK ; 
 unsigned long HPAGE_SIZE ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC2 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct gmap*,unsigned long) ; 
 int FUNC6 (struct gmap*,unsigned long,int /*<<< orphan*/ *,int,unsigned long) ; 
 int FUNC7 (struct gmap*,unsigned long,int /*<<< orphan*/ *,int,unsigned long) ; 
 int FUNC8 (struct gmap*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gmap *gmap, unsigned long gaddr,
			      unsigned long len, int prot, unsigned long bits)
{
	unsigned long vmaddr, dist;
	pmd_t *pmdp;
	int rc;

	FUNC0(FUNC3(gmap));
	while (len) {
		rc = -EAGAIN;
		pmdp = FUNC5(gmap, gaddr);
		if (pmdp) {
			if (!FUNC9(*pmdp)) {
				rc = FUNC7(gmap, gaddr, pmdp, prot,
						      bits);
				if (!rc) {
					len -= PAGE_SIZE;
					gaddr += PAGE_SIZE;
				}
			} else {
				rc = FUNC6(gmap, gaddr, pmdp, prot,
						      bits);
				if (!rc) {
					dist = HPAGE_SIZE - (gaddr & ~HPAGE_MASK);
					len = len < dist ? 0 : len - dist;
					gaddr = (gaddr & HPAGE_MASK) + HPAGE_SIZE;
				}
			}
			FUNC4(gmap, pmdp);
		}
		if (rc) {
			if (rc == -EINVAL)
				return rc;

			/* -EAGAIN, fixup of userspace mm and gmap */
			vmaddr = FUNC2(gmap, gaddr);
			if (FUNC1(vmaddr))
				return vmaddr;
			rc = FUNC8(gmap, gaddr, vmaddr, prot);
			if (rc)
				return rc;
		}
	}
	return 0;
}