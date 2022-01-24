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
struct TYPE_2__ {int /*<<< orphan*/  i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int ofs; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 struct rtl8366_smi* FUNC2 (struct switch_dev*) ; 

int FUNC3(struct switch_dev *dev,
			       const struct switch_attr *attr,
			       struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC2(dev);
	int err;

	if (attr->ofs > 2)
		return -EINVAL;

	if (attr->ofs == 1)
		err = FUNC0(smi, val->value.i);
	else
		err = FUNC1(smi, val->value.i);

	return err;
}