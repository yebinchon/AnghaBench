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
struct seq_file {struct imr_device* private; } ;
struct imr_regs {int addr_lo; int addr_hi; int /*<<< orphan*/  wmask; int /*<<< orphan*/  rmask; } ;
struct imr_device {int max_imr; int /*<<< orphan*/  lock; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int IMR_LOCK ; 
 int IMR_MASK ; 
 scalar_t__ FUNC0 (struct imr_regs*) ; 
 int FUNC1 (struct imr_device*,int,struct imr_regs*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int,int*,int*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *unused)
{
	phys_addr_t base;
	phys_addr_t end;
	int i;
	struct imr_device *idev = s->private;
	struct imr_regs imr;
	size_t size;
	int ret = -ENODEV;

	FUNC3(&idev->lock);

	for (i = 0; i < idev->max_imr; i++) {

		ret = FUNC1(idev, i, &imr);
		if (ret)
			break;

		/*
		 * Remember to add IMR_ALIGN bytes to size to indicate the
		 * inherent IMR_ALIGN size bytes contained in the masked away
		 * lower ten bits.
		 */
		if (FUNC0(&imr)) {
			base = FUNC2(imr.addr_lo);
			end = FUNC2(imr.addr_hi) + IMR_MASK;
			size = end - base + 1;
		} else {
			base = 0;
			end = 0;
			size = 0;
		}
		FUNC5(s, "imr%02i: base=%pa, end=%pa, size=0x%08zx "
			   "rmask=0x%08x, wmask=0x%08x, %s, %s\n", i,
			   &base, &end, size, imr.rmask, imr.wmask,
			   FUNC0(&imr) ? "enabled " : "disabled",
			   imr.addr_lo & IMR_LOCK ? "locked" : "unlocked");
	}

	FUNC4(&idev->lock);
	return ret;
}