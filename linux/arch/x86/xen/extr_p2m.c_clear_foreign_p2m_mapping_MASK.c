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
struct page {int dummy; } ;
struct gnttab_unmap_grant_ref {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FOREIGN_FRAME_BIT ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 int FUNC0 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,unsigned int) ; 
 unsigned long INVALID_P2M_ENTRY ; 
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct gnttab_unmap_grant_ref *unmap_ops,
			      struct gnttab_unmap_grant_ref *kunmap_ops,
			      struct page **pages, unsigned int count)
{
	int i, ret = 0;

	if (FUNC4(XENFEAT_auto_translated_physmap))
		return 0;

	for (i = 0; i < count; i++) {
		unsigned long mfn = FUNC1(FUNC2(pages[i]));
		unsigned long pfn = FUNC2(pages[i]);

		if (mfn == INVALID_P2M_ENTRY || !(mfn & FOREIGN_FRAME_BIT)) {
			ret = -EINVAL;
			goto out;
		}

		FUNC3(pfn, INVALID_P2M_ENTRY);
	}
	if (kunmap_ops)
		ret = FUNC0(GNTTABOP_unmap_grant_ref,
						kunmap_ops, count);
out:
	return ret;
}