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
struct ps3disk_private {int /*<<< orphan*/  gendisk; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  queue; } ;
struct ps3_system_bus_device {int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/  core; } ;
struct ps3_storage_device {struct ps3disk_private* bounce_buf; TYPE_1__ sbd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PS3DISK_MINORS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ps3disk_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ps3disk_private* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ps3_system_bus_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ps3disk_mask ; 
 int /*<<< orphan*/  ps3disk_mask_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct ps3_storage_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ps3_storage_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct ps3_storage_device* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ps3_system_bus_device *_dev)
{
	struct ps3_storage_device *dev = FUNC15(&_dev->core);
	struct ps3disk_private *priv = FUNC10(&dev->sbd);

	FUNC8(&ps3disk_mask_mutex);
	FUNC1(FUNC0(FUNC6(priv->gendisk)) / PS3DISK_MINORS,
		    &ps3disk_mask);
	FUNC9(&ps3disk_mask_mutex);
	FUNC4(priv->gendisk);
	FUNC2(priv->queue);
	FUNC3(&priv->tag_set);
	FUNC14(priv->gendisk);
	FUNC5(&dev->sbd.core, "Synchronizing disk cache\n");
	FUNC12(dev);
	FUNC13(dev);
	FUNC7(dev->bounce_buf);
	FUNC7(priv);
	FUNC11(_dev, NULL);
	return 0;
}