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
struct switch_dev {int dummy; } ;
struct rtl8366_smi {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* setup ) (struct rtl8366_smi*) ;} ;

/* Variables and functions */
 int FUNC0 (struct rtl8366_smi*,int) ; 
 int FUNC1 (struct rtl8366_smi*,int) ; 
 int FUNC2 (struct rtl8366_smi*) ; 
 int FUNC3 (struct rtl8366_smi*) ; 
 int FUNC4 (struct rtl8366_smi*) ; 
 struct rtl8366_smi* FUNC5 (struct switch_dev*) ; 

int FUNC6(struct switch_dev *dev)
{
	struct rtl8366_smi *smi = FUNC5(dev);
	int err;

	err = FUNC2(smi);
	if (err)
		return err;

	err = smi->ops->setup(smi);
	if (err)
		return err;

	err = FUNC3(smi);
	if (err)
		return err;

	err = FUNC1(smi, 1);
	if (err)
		return err;

	return FUNC0(smi, 1);
}