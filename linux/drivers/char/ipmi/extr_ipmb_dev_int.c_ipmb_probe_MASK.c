#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct ipmb_dev {TYPE_2__ miscdev; struct i2c_client* client; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  request_queue_len; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; TYPE_1__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 struct ipmb_dev* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct ipmb_dev*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipmb_fops ; 
 int /*<<< orphan*/  ipmb_slave_cb ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ipmb_dev *ipmb_dev;
	int ret;

	ipmb_dev = FUNC3(&client->dev, sizeof(*ipmb_dev),
					GFP_KERNEL);
	if (!ipmb_dev)
		return -ENOMEM;

	FUNC10(&ipmb_dev->lock);
	FUNC6(&ipmb_dev->wait_queue);
	FUNC1(&ipmb_dev->request_queue_len, 0);
	FUNC0(&ipmb_dev->request_queue);

	FUNC9(&ipmb_dev->file_mutex);

	ipmb_dev->miscdev.minor = MISC_DYNAMIC_MINOR;

	ipmb_dev->miscdev.name = FUNC2(&client->dev, GFP_KERNEL,
						"%s%d", "ipmb-",
						client->adapter->nr);
	ipmb_dev->miscdev.fops = &ipmb_fops;
	ipmb_dev->miscdev.parent = &client->dev;
	ret = FUNC8(&ipmb_dev->miscdev);
	if (ret)
		return ret;

	ipmb_dev->client = client;
	FUNC4(client, ipmb_dev);
	ret = FUNC5(client, ipmb_slave_cb);
	if (ret) {
		FUNC7(&ipmb_dev->miscdev);
		return ret;
	}

	return 0;
}