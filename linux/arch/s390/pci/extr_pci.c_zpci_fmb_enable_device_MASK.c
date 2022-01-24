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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct zpci_fib {int /*<<< orphan*/  fmb_addr; int /*<<< orphan*/  member_0; } ;
struct zpci_dev {int fmb_length; int /*<<< orphan*/ * fmb; int /*<<< orphan*/  unmapped_pages; int /*<<< orphan*/  mapped_pages; int /*<<< orphan*/  allocated_pages; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPCI_MOD_FC_SET_MEASURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zdev_fmb_cache ; 
 scalar_t__ FUNC6 (int,struct zpci_fib*,scalar_t__*) ; 

int FUNC7(struct zpci_dev *zdev)
{
	u64 req = FUNC1(zdev->fh, 0, ZPCI_MOD_FC_SET_MEASURE);
	struct zpci_fib fib = {0};
	u8 cc, status;

	if (zdev->fmb || sizeof(*zdev->fmb) < zdev->fmb_length)
		return -EINVAL;

	zdev->fmb = FUNC4(zdev_fmb_cache, GFP_KERNEL);
	if (!zdev->fmb)
		return -ENOMEM;
	FUNC0((u64) zdev->fmb & 0xf);

	/* reset software counters */
	FUNC2(&zdev->allocated_pages, 0);
	FUNC2(&zdev->mapped_pages, 0);
	FUNC2(&zdev->unmapped_pages, 0);

	fib.fmb_addr = FUNC5(zdev->fmb);
	cc = FUNC6(req, &fib, &status);
	if (cc) {
		FUNC3(zdev_fmb_cache, zdev->fmb);
		zdev->fmb = NULL;
	}
	return cc ? -EIO : 0;
}