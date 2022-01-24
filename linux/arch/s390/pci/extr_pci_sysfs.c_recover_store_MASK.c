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
struct zpci_dev {int /*<<< orphan*/  bus; } ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct pci_dev* FUNC5 (struct device*) ; 
 struct zpci_dev* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct zpci_dev*) ; 
 int FUNC8 (struct zpci_dev*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct zpci_dev *zdev = FUNC6(pdev);
	int ret;

	if (!FUNC0(dev, attr))
		return count;

	FUNC1();
	FUNC3(pdev);
	ret = FUNC7(zdev);
	if (ret)
		goto error;

	ret = FUNC8(zdev);
	if (ret)
		goto error;

	FUNC2(zdev->bus);
	FUNC4();

	return count;

error:
	FUNC4();
	return ret;
}