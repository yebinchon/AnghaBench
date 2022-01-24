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
struct fw_sysfs {scalar_t__ fw_priv; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  fw_lock ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct fw_sysfs* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct fw_sysfs *fw_sysfs = FUNC4(dev);
	int loading = 0;

	FUNC1(&fw_lock);
	if (fw_sysfs->fw_priv)
		loading = FUNC0(fw_sysfs->fw_priv);
	FUNC2(&fw_lock);

	return FUNC3(buf, "%d\n", loading);
}