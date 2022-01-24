#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct circ_buf {int dummy; } ;
struct TYPE_2__ {unsigned long flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct circ_buf*,unsigned long) ; 
 TYPE_1__ acpi_aml_io ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct circ_buf *circ, unsigned long flag)
{
	int ret = 0;

	FUNC2(&acpi_aml_io.lock);
	if (!FUNC0(flag)) {
		ret = -EFAULT;
		goto out;
	}
	if (!FUNC1(circ, flag)) {
		ret = -EAGAIN;
		goto out;
	}
	acpi_aml_io.flags |= flag;
out:
	FUNC3(&acpi_aml_io.lock);
	return ret;
}