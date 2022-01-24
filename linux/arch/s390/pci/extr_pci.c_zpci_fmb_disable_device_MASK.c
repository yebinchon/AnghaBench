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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct zpci_fib {int /*<<< orphan*/  member_0; } ;
struct zpci_dev {int /*<<< orphan*/ * fmb; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPCI_MOD_FC_SET_MEASURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zdev_fmb_cache ; 
 int FUNC2 (int /*<<< orphan*/ ,struct zpci_fib*,int*) ; 

int FUNC3(struct zpci_dev *zdev)
{
	u64 req = FUNC0(zdev->fh, 0, ZPCI_MOD_FC_SET_MEASURE);
	struct zpci_fib fib = {0};
	u8 cc, status;

	if (!zdev->fmb)
		return -EINVAL;

	/* Function measurement is disabled if fmb address is zero */
	cc = FUNC2(req, &fib, &status);
	if (cc == 3) /* Function already gone. */
		cc = 0;

	if (!cc) {
		FUNC1(zdev_fmb_cache, zdev->fmb);
		zdev->fmb = NULL;
	}
	return cc ? -EIO : 0;
}