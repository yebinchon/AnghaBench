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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct kcs_bmc {TYPE_1__ miscdev; void* kbuffer; void* data_out; void* data_in; int /*<<< orphan*/  queue; int /*<<< orphan*/  mutex; int /*<<< orphan*/  channel; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KCS_MSG_BUFSIZ ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kcs_bmc* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcs_bmc_fops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct kcs_bmc *FUNC6(struct device *dev, int sizeof_priv, u32 channel)
{
	struct kcs_bmc *kcs_bmc;

	kcs_bmc = FUNC2(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
	if (!kcs_bmc)
		return NULL;

	FUNC5(&kcs_bmc->lock);
	kcs_bmc->channel = channel;

	FUNC4(&kcs_bmc->mutex);
	FUNC3(&kcs_bmc->queue);

	kcs_bmc->data_in = FUNC1(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
	kcs_bmc->data_out = FUNC1(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
	kcs_bmc->kbuffer = FUNC1(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);

	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
	kcs_bmc->miscdev.name = FUNC0(dev, GFP_KERNEL, "%s%u",
					       DEVICE_NAME, channel);
	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
	    !kcs_bmc->miscdev.name)
		return NULL;
	kcs_bmc->miscdev.fops = &kcs_bmc_fops;

	return kcs_bmc;
}