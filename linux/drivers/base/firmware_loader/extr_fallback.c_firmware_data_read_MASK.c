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
struct kobject {int dummy; } ;
struct fw_sysfs {struct fw_priv* fw_priv; } ;
struct fw_priv {scalar_t__ size; scalar_t__ data; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 size_t ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct fw_priv*,char*,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_priv*,char*,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  fw_lock ; 
 scalar_t__ FUNC2 (struct fw_priv*) ; 
 struct device* FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fw_sysfs* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
				  struct bin_attribute *bin_attr,
				  char *buffer, loff_t offset, size_t count)
{
	struct device *dev = FUNC3(kobj);
	struct fw_sysfs *fw_sysfs = FUNC6(dev);
	struct fw_priv *fw_priv;
	ssize_t ret_count;

	FUNC4(&fw_lock);
	fw_priv = fw_sysfs->fw_priv;
	if (!fw_priv || FUNC2(fw_priv)) {
		ret_count = -ENODEV;
		goto out;
	}
	if (offset > fw_priv->size) {
		ret_count = 0;
		goto out;
	}
	if (count > fw_priv->size - offset)
		count = fw_priv->size - offset;

	ret_count = count;

	if (fw_priv->data)
		FUNC1(fw_priv, buffer, offset, count, true);
	else
		FUNC0(fw_priv, buffer, offset, count, true);

out:
	FUNC5(&fw_lock);
	return ret_count;
}