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
struct zpci_dev {int /*<<< orphan*/  util_str; } ;
struct pci_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct device* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC2 (struct device*) ; 
 struct zpci_dev* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static ssize_t FUNC4(struct file *filp, struct kobject *kobj,
				struct bin_attribute *attr, char *buf,
				loff_t off, size_t count)
{
	struct device *dev = FUNC0(kobj);
	struct pci_dev *pdev = FUNC2(dev);
	struct zpci_dev *zdev = FUNC3(pdev);

	return FUNC1(buf, count, &off, zdev->util_str,
				       sizeof(zdev->util_str));
}