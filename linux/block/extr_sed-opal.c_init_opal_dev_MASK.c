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
struct opal_dev {int /*<<< orphan*/ * send_recv; void* data; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  unlk_lst; } ;
typedef  int /*<<< orphan*/  sec_send_recv ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct opal_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct opal_dev*) ; 
 struct opal_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct opal_dev *FUNC6(void *data, sec_send_recv *send_recv)
{
	struct opal_dev *dev;

	dev = FUNC3(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	FUNC0(&dev->unlk_lst);
	FUNC4(&dev->dev_lock);
	dev->data = data;
	dev->send_recv = send_recv;
	if (FUNC1(dev) != 0) {
		FUNC5("Opal is not supported on this device\n");
		FUNC2(dev);
		return NULL;
	}

	return dev;
}