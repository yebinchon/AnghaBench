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
struct fw_sysfs {int /*<<< orphan*/  fw_priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_sysfs*) ; 

__attribute__((used)) static int FUNC3(struct fw_sysfs *fw_sysfs, int min_size)
{
	int err;

	err = FUNC1(fw_sysfs->fw_priv,
				FUNC0(min_size) >> PAGE_SHIFT);
	if (err)
		FUNC2(fw_sysfs);
	return err;
}