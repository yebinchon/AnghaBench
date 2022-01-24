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
struct vio_dev {char* type; } ;
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct vio_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	const struct vio_dev *vio_dev = FUNC4(dev);
	struct device_node *dn;
	const char *cp;

	dn = dev->of_node;
	if (!dn) {
		FUNC2(buf, "\n");
		return FUNC3(buf);
	}
	cp = FUNC0(dn, "compatible", NULL);
	if (!cp) {
		FUNC2(buf, "\n");
		return FUNC3(buf);
	}

	return FUNC1(buf, "vio:T%sS%s\n", vio_dev->type, cp);
}