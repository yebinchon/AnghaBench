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
struct TYPE_2__ {int mode; int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; int /*<<< orphan*/  show; int /*<<< orphan*/  store; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUGO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(struct device *dev,
		       const struct device_attribute *attr)
{
	int error = 0;

	if (dev) {
		FUNC0(((attr->attr.mode & S_IWUGO) && !attr->store),
			"Attribute %s: write permission without 'store'\n",
			attr->attr.name);
		FUNC0(((attr->attr.mode & S_IRUGO) && !attr->show),
			"Attribute %s: read permission without 'show'\n",
			attr->attr.name);
		error = FUNC1(&dev->kobj, &attr->attr);
	}

	return error;
}